import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController

    // 1) "liquid_glass_native" 뷰 타입 등록
    controller
      .register(
        LiquidGlassFactory(
          messenger: controller.binaryMessenger
        ),
        withId: "liquid_glass_native"
      )

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
