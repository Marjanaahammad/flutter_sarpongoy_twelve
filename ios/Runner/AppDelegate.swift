import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // ── SimpleMDM Managed App Configuration channel ──────────────────────────
    // SimpleMDM injects device info (including serial_number) into the app via
    // Apple's MDM Managed App Configuration. The payload is stored by iOS in
    // NSUserDefaults under the key "com.apple.configuration.managed".
    let controller = window?.rootViewController as! FlutterViewController
    let mdmChannel = FlutterMethodChannel(
      name: "com.sarpongoy.ilearnready/mdm_config",
      binaryMessenger: controller.binaryMessenger
    )

    mdmChannel.setMethodCallHandler { (call, result) in
      if call.method == "getSerialNumber" {
        let managed = UserDefaults.standard.dictionary(forKey: "com.apple.configuration.managed")

        // ── DEBUG: print full MDM payload to Xcode console ──
        if let managed = managed {
          print("[MDM] Managed App Config dictionary: \(managed)")
        } else {
          print("[MDM] No managed config found — device is NOT enrolled in SimpleMDM")
        }

        let serial = managed?["serial_number"] as? String ?? ""
        print("[MDM] Resolved serial_number: '\(serial)'")
        result(serial)
      } else {
        result(FlutterMethodNotImplemented)
      }
    }
    // ─────────────────────────────────────────────────────────────────────────

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
