import 'package:flutter/foundation.dart';

import 'src/method_channel_quick_notify.dart';
import 'src/quick_notify_platform_interface.dart';

bool _manualDartRegistrationNeeded = true;

QuickNotifyPlatform get _platform {
  // This is to manually endorse Dart implementations until automatic
  // registration of Dart plugins is implemented. For details see
  // https://github.com/flutter/flutter/issues/52267.
  if (!kIsWeb && _manualDartRegistrationNeeded) {
    // Only do the initial registration if it hasn't already been overridden
    // with a non-default instance.
    QuickNotifyPlatform.instance = MethodChannelQuickNotify();
    _manualDartRegistrationNeeded = false;
  }

  return QuickNotifyPlatform.instance;
}

class QuickNotify {
  static Future<bool> hasPermission() => _platform.hasPermission();

  static Future<bool> requestPermission() => _platform.requestPermission();

  static void notify({
    String title = 'quick_notify',
    String? content,
  }) => _platform.notify(
    title: title,
    content: content,
  );
}
