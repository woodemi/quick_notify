
import 'package:quick_notify/quick_notify.dart';

class Notification {
  Notification(String title,
      {String? dir, String? body, String? lang, String? tag, String? icon}) {
    QuickNotify.notify(content: body);
  }

  static requestPermission() {}
}
