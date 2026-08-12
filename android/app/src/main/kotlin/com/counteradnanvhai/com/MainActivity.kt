package com.counteradnanvhai.com

import android.content.RestrictionsManager
import android.content.Context
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private val MDM_CHANNEL = "com.counteradnanvhai.com/mdm_config"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // ── SimpleMDM / Android EMM Managed Config channel ───────────────────
        // MDM solutions push app configuration via Android's RestrictionsManager.
        // The serial_number key is expected to be injected by the MDM provider.
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, MDM_CHANNEL)
            .setMethodCallHandler { call, result ->
                if (call.method == "getSerialNumber") {
                    try {
                        val restrictionsManager =
                            getSystemService(Context.RESTRICTIONS_SERVICE) as RestrictionsManager
                        val bundle = restrictionsManager.applicationRestrictions
                        val serial = bundle?.getString("serial_number") ?: ""
                        result.success(serial)
                    } catch (e: Exception) {
                        result.success("") // not MDM-enrolled, return empty
                    }
                } else {
                    result.notImplemented()
                }
            }
        // ─────────────────────────────────────────────────────────────────────
    }
}
