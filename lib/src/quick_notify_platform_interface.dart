import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class QuickNotifyPlatform extends PlatformInterface {
  QuickNotifyPlatform() : super(token: _token);

  static final Object _token = Object();

  static late QuickNotifyPlatform _instance;

  /// The default instance of [QuickNotifyPlatform] to use.
  ///
  /// Defaults to [QuickUsbMethodChannel].
  static QuickNotifyPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [QuickNotifyPlatform] when they register themselves.
  static set instance(QuickNotifyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> hasPermission();

  Future<bool> requestPermission();

  void notify({
    required String title,
    String? content,
  });
}
