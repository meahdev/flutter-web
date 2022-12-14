import FlutterMacOS
import Foundation

public class WindowSizePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    FLEWindowSizePlugin.register(with: registrar)
  }
}
