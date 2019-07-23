import UIKit
import CocoaMQTT

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
	
	func applicationDidBecomeActive(_ application: UIApplication) {
		_ = MQTT.client.connect()
	}
	
    func applicationDidEnterBackground(_ application: UIApplication) {
        MQTT.client.disconnect()
    }
}

