import 'dart:html';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:quick_notify/src/quick_notify_platform_interface.dart';

const _PermissionGranted = 'granted';
const _PermissionDenied = 'denied';
const _PermissionDefault = 'default';

class QuickNotifyWeb extends QuickNotifyPlatform {
  static void registerWith(Registrar registrar) {
    QuickNotifyPlatform.instance = QuickNotifyWeb();
  }

  @override
  Future<bool> hasPermission() async {
    return Notification.permission == _PermissionGranted;
  }

  @override
  Future<bool> requestPermission() async {
    var result = await Notification.requestPermission();
    return result == _PermissionGranted;
  }

  @override
  void notify({
    required String title,
    String? content,
  }) {
    Notification(title, body: content);
  }
}