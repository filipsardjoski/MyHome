// Created by Filip Sardjoski on 7/23/19.

import WatchKit

class InterfaceController: WKInterfaceController {
    
    @IBAction func toggleWall() {
        MQTT.client.publish(to: "/gardenLights/esp8266", message: "TOGGLE".data(using: .utf8))
    }
    
    @IBAction func toggleGarden() {
        MQTT.client.publish(to: "/houseWallLights/esp8266", message: "TOGGLE".data(using: .utf8))
    }
}
