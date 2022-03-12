import 'package:flutter/services.dart';

import 'quick_notify_platform_interface.dart';

const MethodChannel _channel = const MethodChannel('quick_notify');

class MethodChannelQuickNotify extends QuickNotifyPlatform {
  void notify({
    String? content,
  }) {
    _channel.invokeMethod('notify', {
      'content': content,
    });
  }
}