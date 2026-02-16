import Foundation
import Flutter
import UIKit

class LiquidGlassFactory: NSObject, FlutterPlatformViewFactory {

  private var messenger: FlutterBinaryMessenger

  init(messenger: FlutterBinaryMessenger) {
    self.messenger = messenger
    super.init()
  }

  func create(
    withFrame frame: CGRect,
    viewIdentifier viewId: Int64,
    arguments args: Any?
  ) -> FlutterPlatformView {

    return LiquidGlassNativeView(
      frame: frame,
      viewId: viewId,
      args: args,
      messenger: messenger
    )
  }
}
