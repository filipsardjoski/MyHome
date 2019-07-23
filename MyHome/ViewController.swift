import UIKit
import CocoaMQTT

class ViewController: UIViewController {
    
    @IBAction func toggleWall(_ sender: Any) {
        MQTT.client.publish("/gardenLights/esp8266", withString: "TOGGLE")
    }
    
    @IBAction func toggleGarden(_ sender: Any) {
        MQTT.client.publish("/houseWallLights/esp8266", withString: "TOGGLE")
    }
    
}

