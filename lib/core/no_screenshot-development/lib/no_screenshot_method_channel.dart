import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:no_screenshot/constants.dart';
import 'package:no_screenshot/screenshot_snapshot.dart';

import 'no_screenshot_platform_interface.dart';

/// An implementation of [NoScreenshotPlatform] that uses method channels.
class MethodChannelNoScreenshot extends NoScreenshotPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel(screenshotMethodChannel);
  @visibleForTesting
  final eventChannel = const EventChannel(screenshotEventChannel);

  Stream<ScreenshotSnapshot>? _cachedStream;

  @override
  Stream<ScreenshotSnapshot> get screenshotStream {
    _cachedStream ??= eventChannel.receiveBroadcastStream().map(
          (event) => ScreenshotSnapshot.fromMap(
              jsonDecode(event) as Map<String, dynamic>),
        );
    return _cachedStream!;
  }

  @override
  Future<bool> toggleScreenshot() async {
    return _invokeBool(toggleScreenShotConst);
  }

  @override
  Future<bool> screenshotOff() async {
    return _invokeBool(screenShotOffConst);
  }

  @override
  Future<bool> screenshotOn() async {
    return _invokeBool(screenShotOnConst);
  }

  @override
  Future<bool> toggleScreenshotWithImage() async {
    return _invokeBool(screenSetImage);
  }

  @override
  Future<bool> toggleScreenshotWithBlur({double blurRadius = 30.0}) async {
    return _invokeBool(screenSetBlur, {
      'radius': blurRadius,
    });
  }

  @override
  Future<bool> toggleScreenshotWithColor({int color = 0xFF000000}) async {
    return _invokeBool(screenSetColor, {
      'color': color,
    });
  }

  @override
  Future<bool> screenshotWithImage() async {
    return _invokeBool(screenEnableImage);
  }

  @override
  Future<bool> screenshotWithBlur({double blurRadius = 30.0}) async {
    return _invokeBool(screenEnableBlur, {
      'radius': blurRadius,
    });
  }

  @override
  Future<bool> screenshotWithColor({int color = 0xFF000000}) async {
    return _invokeBool(screenEnableColor, {
      'color': color,
    });
  }

  @override
  Future<void> startScreenshotListening() {
    return _invokeVoid(startScreenshotListeningConst);
  }

  @override
  Future<void> stopScreenshotListening() {
    return _invokeVoid(stopScreenshotListeningConst);
  }

  @override
  Future<void> startScreenRecordingListening() {
    return _invokeVoid(startScreenRecordingListeningConst);
  }

  @override
  Future<void> stopScreenRecordingListening() {
    return _invokeVoid(stopScreenRecordingListeningConst);
  }

  Future<bool> _invokeBool(String method,
      [Map<String, dynamic>? arguments]) async {
    try {
      final result = await methodChannel.invokeMethod<bool>(method, arguments);
      return result ?? false;
    } on MissingPluginException {
      return false;
    }
  }

  Future<void> _invokeVoid(String method) async {
    try {
      await methodChannel.invokeMethod<void>(method);
    } on MissingPluginException {
      return;
    }
  }
}
