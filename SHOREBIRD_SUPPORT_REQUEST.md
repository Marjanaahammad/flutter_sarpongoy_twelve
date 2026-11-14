To: contact@shorebird.dev
Subject: Request higher iOS xcarchive artifact limit for offline education app

Hello Shorebird team,

Our offline education app, iLearnReady, builds successfully with Shorebird but
cannot complete its first iOS release because the xcarchive upload is rejected.
We need to preserve the bundled educational media at its current quality and
make all lessons available without an initial download.

Could you confirm whether you can raise the release artifact upload limit to
4 GiB for this app/organization? If this requires a different plan or an
Enterprise agreement, please provide the requirements and pricing before any
subscription change. Alternatively, is there a supported way to register this
release without uploading the full media-heavy archive, while retaining correct
patching and asset validation?

Account: saafsd.app@gmail.com
Organization ID: 46970 (personal organization, Hobby plan)
App: iLearnReady
App ID: a9be5bc8-971f-422d-9b68-927d6303159a
Bundle ID: com.sarpongoy.ilearnready
Version: 1.0.17+2
Flutter: 3.24.3
Build environment: Codemagic macOS runner

Command:
shorebird release ios --flutter-version 3.24.3 --export-options-plist /Users/builder/export_options.plist

Failure:
Error uploading xcarchive artifact: The artifact exceeds the maximum allowed upload size.
The artifact size (2330067682 bytes) exceeds the maximum allowed size of 2147483648 bytes.
Error code: release_artifacts_create_artifact_too_large

Reported artifact: 2,330,067,682 bytes (about 2.17 GiB)
Enforced limit: 2,147,483,648 bytes (2 GiB)
Excess: 182,584,034 bytes (about 174.1 MiB)

A local unsigned dry run also built the archive successfully and reported
"No issues detected", but the actual release fails during artifact registration.
The bundled assets total approximately 2.2 GiB, primarily educational audio,
images, and videos.

Codemagic reported this log path:
/Users/builder/Library/Application Support/shorebird/logs/1794651176352_shorebird.log
The full CI log is not attached to this request; we can retrieve it if needed.

Thank you.
