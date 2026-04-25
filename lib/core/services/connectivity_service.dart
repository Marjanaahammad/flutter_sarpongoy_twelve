import 'dart:async';
import 'package:flutter/foundation.dart';

import '../config/debug_print.dart';

// Mocking ConnectivityResult for now since we disabled the plugin
enum ConnectivityResult { wifi, mobile, ethernet, vpn, none }

class ConnectivityService {
  static ConnectivityService? _instance;
  static ConnectivityService get instance =>
      _instance ??= ConnectivityService._internal();

  ConnectivityService._internal();

  // final Connectivity _connectivity = Connectivity();
  StreamSubscription? _connectivitySubscription;

  // Current connectivity status as ValueNotifier for reactive updates
  final ValueNotifier<bool> _isConnectedNotifier = ValueNotifier<bool>(true);
  ValueNotifier<bool> get isConnectedNotifier => _isConnectedNotifier;
  bool get isConnected => _isConnectedNotifier.value;

  // Stream controller for connectivity changes
  final StreamController<bool> _connectivityController =
      StreamController<bool>.broadcast();
  Stream<bool> get connectivityStream => _connectivityController.stream;

  /// Stream that emits only when the device reconnects to the internet
  Stream<void> get onReconnected => _connectivityController.stream
      .where((connected) => connected)
      .map((_) {});

  /// Initialize connectivity monitoring
  Future<void> initialize() async {
    DPrint.info('Initializing ConnectivityService (Mocked)');
    // Check initial connectivity
    await _checkConnectivity();

    // Mocking changes every 10 minutes or just stay connected
    DPrint.info('ConnectivityService initialized (Mocked)');
  }

  /// Check current connectivity status
  Future<bool> checkConnectivity() async {
    return true; // Always return true for now
  }

  /// Private method to check connectivity and update status
  Future<void> _checkConnectivity() async {
    final bool wasConnected = _isConnectedNotifier.value;
    final bool isNowConnected = await checkConnectivity();

    if (wasConnected != isNowConnected) {
      _isConnectedNotifier.value = isNowConnected;
      _connectivityController.add(isNowConnected);
    }
  }

  /// Handle connectivity changes
  void _onConnectivityChanged(ConnectivityResult result) {
    // Disabled
  }

  /// Check if any of the connectivity results indicate internet connection
  bool _hasInternetConnection(ConnectivityResult result) {
    return result != ConnectivityResult.none;
  }

  /// Wait for internet connection (useful for retry mechanisms)
  Future<void> waitForConnection({Duration? timeout}) async {
    if (_isConnectedNotifier.value) return;
    return;
  }

  /// Dispose resources
  void dispose() {
    _connectivitySubscription?.cancel();
    _connectivityController.close();
    _isConnectedNotifier.dispose();
  }
}
