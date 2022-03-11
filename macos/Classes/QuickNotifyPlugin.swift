import Cocoa
import FlutterMacOS

public class QuickNotifyPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "quick_notify", binaryMessenger: registrar.messenger)
    let instance = QuickNotifyPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "notify":
      let args = call.arguments as! Dictionary<String, Any>
      let content = args["content"] as! String

      let notification = NSUserNotification()
      notification.informativeText = content
      NSUserNotificationCenter.default.deliver(notification)
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
