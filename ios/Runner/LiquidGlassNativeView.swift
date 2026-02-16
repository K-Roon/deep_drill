import UIKit
import Flutter

class LiquidGlassNativeView: NSObject, FlutterPlatformView {
  private var _view: UIView

  init(
    frame: CGRect,
    viewId: Int64,
    args: Any?,
    messenger: FlutterBinaryMessenger
  ) {
    _view = UIView(frame: frame)

    super.init()
    createGlassEffect()
  }

  func view() -> UIView {
    return _view
  }

  func createGlassEffect() {
    let blur = UIBlurEffect(style: .systemUltraThinMaterial)
    let blurView = UIVisualEffectView(effect: blur)

    blurView.frame = _view.bounds
    blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

    _view.addSubview(blurView)
  }
}
