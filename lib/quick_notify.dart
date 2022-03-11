
import 'package:flutter/services.dart';

class QuickNotify {
  static const MethodChannel _channel =
      const MethodChannel('quick_notify');

  static void notify({
    String? content,
  }) {
    _channel.invokeMethod('notify', {
      'content': content,
    });
  }
}
