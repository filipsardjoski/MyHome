// Created by Filip Sardjoski on 7/23/19.

import WatchKit

class ExtensionDelegate: NSObject, WKExtensionDelegate {

    func applicationDidBecomeActive() {
        MQTT.client.connect()
    }

    func applicationWillResignActive() {
        MQTT.client.disconnect()
    }

}
