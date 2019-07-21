import UIKit
import CocoaMQTT

class ViewController: UIViewController {
    
	@IBAction func onButtonPressed(_ sender: Any) {
		MQTT.client.publish("/houseWallLights/esp8266", withString: "ON")
		MQTT.client.publish("/gardenLights/esp8266", withString: "ON")
	}
	
	@IBAction func offButtonPressed(_ sender: Any) {
		MQTT.client.publish("/houseWallLights/esp8266", withString: "OFF")
		MQTT.client.publish("/gardenLights/esp8266", withString: "ON")
	}
}

