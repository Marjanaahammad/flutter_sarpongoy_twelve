# Shorebird iOS releases

The project uses Flutter 3.24.3 and iOS bundle ID `com.sarpongoy.ilearnready`.

## App registration

The app is registered as **iLearnReady** in the personal organization owned by
`saafsd.app@gmail.com` (organization ID `46970`). Its app ID is
`a9be5bc8-971f-422d-9b68-927d6303159a`.

Authenticate locally with `shorebird login`. Use `shorebird apps list` to
confirm which apps the account can access. The previous app ID was
`cb169d62-460f-4155-928b-8f499958a1d8`; the failing CI account could not access it.

Commit `shorebird.yaml`. Its asset entry already exists in
`pubspec.yaml`. Keep the same app ID for subsequent releases and patches. A new
app ID requires a new store release before installed users can receive its patches.
Do not initialize a fresh app on every CI build.

## Codemagic configuration

The existing **Default Workflow** uses Codemagic's Workflow Editor. A validated
release-only API key named `iLearnReady Codemagic local setup` was saved there as
a Secret variable named `SHOREBIRD_TOKEN` on November 1, 2026. It expires after
one year. The save was verified by reloading the workflow settings.

The YAML workflow below is an alternative configuration. Workflow Editor
variables do not automatically become YAML variable groups; configure the
`shorebird` group before switching to YAML.

1. In the Shorebird console, create an API key with release access to the same
   app/organization. Legacy `shorebird login:ci` tokens are no longer supported.
2. In Codemagic, save the key as the **secure** variable `SHOREBIRD_TOKEN` in a
   variable group named `shorebird`. Do not commit the key.
3. Make the App Store distribution certificate and provisioning profile for
   `com.sarpongoy.ilearnready` available to Codemagic's automatic code signing.
   The supplied failing build used Apple team `S8ACXQKU97`; ensure the profile
   and certificate belong to the intended Apple team.
4. Select the YAML workflow **Shorebird iOS Release** (`shorebird-ios-release`).

The workflow verifies account/app access before building, configures signing,
and produces an IPA while creating the Shorebird release. Store submission is
a separate step. Increase the version/build in `pubspec.yaml` when required for
a new App Store upload.

For a local signed release, supply a valid export options plist:

```sh
shorebird release ios --flutter-version=3.24.3 \
  --export-options-plist=/absolute/path/to/export_options.plist
```

Reference: https://docs.shorebird.dev/code-push/ci/codemagic/

## Local validation

The following command passed on November 1, 2026, producing
`build/ios/archive/Runner.xcarchive` for version `1.0.16+1`:

```sh
shorebird release ios --flutter-version=3.24.3 --no-codesign --dry-run
```

The archived app contains the replacement app ID and Shorebird patch signing
public key. No release was uploaded by this validation. A signed IPA and the
first uploaded Shorebird release still require the Codemagic run described above.
The local validation was repeated successfully after saving the Codemagic key.
This Mac has no valid code signing identities, so local validation used an
unsigned archive.

## Release upload blocker

The subsequent Codemagic release failed at artifact registration: its xcarchive
was 2,798,859,849 bytes, above the server's enforced 2,147,483,648-byte limit.
The successful dry run did not validate that upload limit. Media quality and
offline availability must remain unchanged at the user's request.

No supported upload-limit setting was found in the public CLI/API or an
advertised higher limit in the plan comparison. A larger limit needs confirmation
from Shorebird; upgrading plans is not a verified fix. A support request is
prepared in `SHOREBIRD_SUPPORT_REQUEST.md` and has not been sent.

The subsequent `1.0.17+2` release also built its IPA successfully, but Shorebird
rejected the 2,330,067,682-byte xcarchive artifact. This is 182,584,034 bytes
(174.1 MiB) above the same limit. The local assets now total approximately
2.2 GiB; a sampled lossless JPEG optimization found no savings. The support
request has been updated to this failure. No media or build settings were changed.

## Image optimization for Codemagic releases

The user subsequently authorized reducing asset sizes while preserving every
asset. JPEG optimization has now been applied directly to the repository,
so both the YAML and Workflow Editor builds include the smaller files.
The optimizer caps JPEGs at 800 pixels
on the longest side and encodes at quality 75, keeping each replacement only
when smaller. This is lossy: fine text and diagrams need visual review in
TestFlight. Every asset path remains available offline; audio, video, PNGs,
and other assets are unchanged. Original media remains in Git history.
CI uses `scripts/optimize_assets.py --check-only` to check the size budget
without repeatedly recompressing committed images.

A full local measurement covered all 11,935 assets and validated all 3,606
optimized JPEGs. It reduced the asset total from 2,344,945,025 to
2,070,160,996 bytes (2,236.3 to 1,974.3 MiB), saving 262.1 MiB. This exceeds the
reported upload overage of 174.1 MiB by approximately 88 MiB, assuming comparable
archive overhead. No release has been uploaded by this local change.

Select **Shorebird iOS Release** in Codemagic after committing and pushing these
changes. The Workflow Editor's **Default Workflow** does not automatically run
YAML scripts. If continuing to use that editor, remove any previous optimization
command and add this check before the existing Shorebird build command:

```sh
set -eu
python3 scripts/optimize_assets.py --check-only
```

Use these same committed assets for releases and patch builds. Avoid repeatedly
recompressing them. The size check requires only Python's standard library;
its report goes to `build/asset-size-report.json`. To optimize newly added media,
install `scripts/requirements-assets.txt` and run the optimizer on that media's
directory with `--assets <directory> --apply`, then commit the result.

After pushing these changes, start a clean Codemagic build with build caches
cleared. Confirm the build uses the new commit. The previous failed retry had
an essentially identical 2,330,067,687-byte artifact, so it did not contain the
measured reductions. The Release deployment target is now 12.0, matching
Debug, Profile, the Podfile, and AppFrameworkInfo.plist. Installed pod
specifications were checked and none require a version higher than iOS 12.0.

The optimizer validates the new JPEGs and checks that file paths are preserved.
It fails if assets exceed 2,000 MiB, leaving some space for native binaries and
archive metadata. This budget is a preliminary check; only the actual Shorebird
artifact upload proves that the complete archive fits its 2 GiB limit. A signed
Codemagic release and App Store submission still need to be run. The existing
YAML workflow creates the Shorebird release and retains the IPA; App Store
Connect publishing remains a separate Codemagic publishing configuration.
