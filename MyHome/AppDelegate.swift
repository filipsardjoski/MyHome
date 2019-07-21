import UIKit
import CocoaMQTT

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        MQTT.client.disconnect()
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        _ = MQTT.client.connect()
    }
}

