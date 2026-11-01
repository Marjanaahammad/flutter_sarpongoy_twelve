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
