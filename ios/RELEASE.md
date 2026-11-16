# iOS release

This branch targets iOS 15.0 and later. Its bundle ID, signing team, iPad device
support, app version, features, and lesson assets are preserved.

Use Flutter with Dart 3.12.1 or later, as on `noyon-dev-13`. The local validation
uses Flutter 3.47.0 / Dart 3.13.0 and Xcode 26.4. The older Flutter 3.24.3 SDK
previously referenced by generated local settings cannot build this setup.

From the repository root:

```sh
flutter pub get
flutter build ios --release --no-codesign
open ios/Runner.xcworkspace
```

Flutter generates the local Swift package and SDK settings before Xcode opens.
Keep both Swift Package Manager resolution files and `Podfile.lock`: most native
plugins use Swift Package Manager; the existing secure storage plugin still uses
CocoaPods. A shorter Podfile.lock does not remove those plugins from the app.

In Xcode, select the Runner scheme and an iOS device archive destination. Verify
Signing & Capabilities uses the distribution account for
`com.sarpongoy.ilearnready`, then choose Product > Archive. Use Organizer's
Validate App and Distribute App actions with the appropriate App Store Connect
record. Set a new build number in `pubspec.yaml` if the current build number has
already been uploaded.

An unsigned build verifies compilation; distribution signing, an iOS 15 device
smoke test, and App Store validation must still be completed before publishing.

## Validation status

Xcode project/plist parsing and Podfile syntax checks pass. Focused static
analysis of the math renderer and its regression test reports no errors.
The first release compile exposed the old Google Fonts and math layout APIs;
both have been updated. The subsequent release build could not complete Swift
package resolution while the disk was nearly full. Test execution also failed
with `No space left on device`, including when media asset copying was disabled.
Free disk space, then rerun the release build and tests before archiving:

```sh
flutter test --no-test-assets test/math_layout_compatibility_test.dart test/independent_question_state_test.dart test/progress_update_test.dart
```

The bundled secure storage platform-interface package has its own `pubspec.yaml`
and declares Mockito. Resolve that package separately on a fresh checkout so its
mock tests can resolve their imports:

```sh
cd lib/core/flutter_secure_storage_platform_interface
flutter pub get
dart analyze test/flutter_secure_storage_platform_interface_mock.dart
```

This focused analysis passes after dependency resolution. No source files or
lesson assets were deleted to address storage pressure or analysis findings.
