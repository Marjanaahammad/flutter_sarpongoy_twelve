#!/usr/bin/env python3
"""Measure JPEG savings; --apply replaces only smaller, validated encodings.

Run on a fresh checkout before every Shorebird release AND patch build.
Original assets remain in Git. No asset paths, audio, or videos are changed.
"""

import argparse
from concurrent.futures import ThreadPoolExecutor
from io import BytesIO
import json
import os
from pathlib import Path
import tempfile

from PIL import Image, ImageOps


def optimize(path, max_edge, quality, apply):
    before = path.stat().st_size
    with Image.open(path) as source:
        # Leave unusual multi-frame or incorrectly named assets untouched.
        if source.format != "JPEG" or getattr(source, "n_frames", 1) != 1:
            return before, before, False
        image = ImageOps.exif_transpose(source)
        image.thumbnail((max_edge, max_edge), Image.Resampling.LANCZOS)
        output = BytesIO()
        image.convert("RGB").save(
            output, "JPEG", quality=quality, optimize=True, progressive=True,
            icc_profile=source.info.get("icc_profile"),
        )
        data = output.getvalue()
        if len(data) >= before:
            return before, before, False
        with Image.open(BytesIO(data)) as check:
            check.load()
            if check.size != image.size:
                raise ValueError(f"Image size validation failed: {path}")
    if apply:
        temporary = None
        try:
            with tempfile.NamedTemporaryFile(dir=path.parent, delete=False) as handle:
                temporary = Path(handle.name)
                handle.write(data)
            temporary.chmod(path.stat().st_mode & 0o777)
            os.replace(temporary, path)
        finally:
            if temporary is not None:
                temporary.unlink(missing_ok=True)
    return before, len(data), True


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--assets", type=Path, default=Path("assets"))
    parser.add_argument("--max-edge", type=int, default=800)
    parser.add_argument("--quality", type=int, default=75)
    parser.add_argument("--workers", type=int, default=4)
    parser.add_argument("--apply", action="store_true")
    parser.add_argument("--report", type=Path, default=Path("build/asset-size-report.json"))
    parser.add_argument("--budget-mib", type=int, default=2000)
    args = parser.parse_args()
    if not args.assets.is_dir():
        parser.error(f"Asset directory missing: {args.assets}")
    if args.max_edge < 1 or not 1 <= args.quality <= 95 or args.workers < 1:
        parser.error("Invalid image quality, dimensions, or worker count")
    files = sorted(p for p in args.assets.rglob("*") if p.is_file())
    total = sum(p.stat().st_size for p in files)
    jpegs = [p for p in files if p.suffix.lower() in (".jpg", ".jpeg")]
    saved = changed = 0
    with ThreadPoolExecutor(max_workers=args.workers) as pool:
        results = pool.map(
            lambda p: optimize(p, args.max_edge, args.quality, args.apply), jpegs
        )
        for index, (before, after, smaller) in enumerate(results, 1):
            saved += before - after
            changed += smaller
            if index % 250 == 0:
                print(f"Checked {index}/{len(jpegs)} JPEGs", flush=True)
    remaining = sorted(p for p in args.assets.rglob("*") if p.is_file())
    if files != remaining:
        raise RuntimeError("Asset file paths changed during optimization")
    report = {
        "applied": args.apply, "asset_count": len(files),
        "jpeg_count": len(jpegs), "optimized_count": changed,
        "max_edge": args.max_edge, "quality": args.quality,
        "bytes_before": total, "bytes_after": total - saved,
        "bytes_saved": saved,
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))
    print(f"Asset size: {total / 1048576:.1f} -> {(total - saved) / 1048576:.1f} MiB")
    if total - saved > args.budget_mib * 1048576:
        raise SystemExit("Assets exceed budget; inspect the size report before releasing")


if __name__ == "__main__":
    main()
