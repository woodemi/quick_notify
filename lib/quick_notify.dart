
import 'dart:async';

import 'package:flutter/services.dart';

class QuickNotify {
  static const MethodChannel _channel =
      const MethodChannel('quick_notify');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
