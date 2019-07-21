import UIKit
import CocoaMQTT

class ViewController: UIViewController {

	let mqttClient = CocoaMQTT(clientID: "iOS Device", host: "192.168.100.66", port: 1883)
    
	@IBAction func onButtonPressed(_ sender: Any) {
		mqttClient.publish("/houseWallLights/esp8266", withString: "ON")
		mqttClient.publish("/gardenLights/esp8266", withString: "ON")
	}
	
	@IBAction func offButtonPressed(_ sender: Any) {
		mqttClient.publish("/houseWallLights/esp8266", withString: "OFF")
		mqttClient.publish("/gardenLights/esp8266", withString: "ON")
	}
}

