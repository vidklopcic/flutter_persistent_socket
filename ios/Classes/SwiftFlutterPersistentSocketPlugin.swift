import Flutter
import UIKit

public class SwiftFlutterPersistentSocketPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_persistent_socket", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPersistentSocketPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
