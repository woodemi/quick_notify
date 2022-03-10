import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'web/notification.dart' if (dart.library.js) 'dart:html';

class QuickNotify {
  static const MethodChannel _channel = const MethodChannel('quick_notify');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  // title only work for web
  static Future<void> notify({
    String? title,
    String? content,
  }) async {
    if (kIsWeb) {
      final permission = await Notification.requestPermission();
      if (permission != 'granted') {
        return;
      }
      Notification(title ?? "title", body: content);
    } else {
      _channel.invokeMethod('notify', {
        'content': content,
      });
    }
  }
}
