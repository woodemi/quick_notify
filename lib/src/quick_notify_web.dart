import 'dart:html';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:quick_notify/src/quick_notify_platform_interface.dart';

class QuickNotifyWeb extends QuickNotifyPlatform {
  static void registerWith(Registrar registrar) {
    QuickNotifyPlatform.instance = QuickNotifyWeb();
  }

  @override
  Future<bool> hasPermission() async {
    // TODO: implement hasPermission
    throw UnimplementedError();
  }

  @override
  Future<bool> requestPermission() async {
    // TODO: implement hasPermission
    throw UnimplementedError();
  }

  @override
  void notify({
    String? content
  }) {
    Notification('quick_notify', body: content);
  }
}