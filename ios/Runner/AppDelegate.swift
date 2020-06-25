import UIKit
import Flutter

//1. Add this for Firebase
import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    //2. Add this for Firebase
    FirebaseApp.configure()
    
    GeneratedPluginRegistrant.register(with: self)
    if #available(iOS 10.0, *) {
        
    //3. Add this For Firebase Messaging
      UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
    }
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
