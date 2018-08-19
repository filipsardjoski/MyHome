import UIKit
import CocoaMQTT

class ViewController: UIViewController {

    let mqttClient = CocoaMQTT(clientID: "iOS Device", host: "192.168.100.66", port: 1883)
    
    override func viewDidLoad() {
        mqttClient.connect()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        mqttClient.disconnect()
    }
    
    @IBAction func gardenON(_ sender: Any) {
        mqttClient.connect()
        mqttClient.publish("/houseWallLights/esp8266", withString: "OFF")
    }
    
    @IBAction func gardenOff(_ sender: Any) {
        mqttClient.connect()
        mqttClient.publish("/houseWallLights/esp8266", withString: "ON")
    }
    
    @IBAction func gardenToggle(_ sender: Any) {
        mqttClient.connect()
        mqttClient.publish("/houseWallLights/esp8266", withString: "TOGGLE")
    }
    
    @IBAction func houseWallOn(_ sender: Any) {
        mqttClient.connect()
        mqttClient.publish("/gardenLights/esp8266", withString: "OFF")
    }
    
    @IBAction func houseWallOff(_ sender: Any) {
        mqttClient.connect()
        mqttClient.publish("/gardenLights/esp8266", withString: "ON")
    }
    
    @IBAction func houseWallToggle(_ sender: Any) {
        mqttClient.connect()
        mqttClient.publish("/gardenLights/esp8266", withString: "TOGGLE")
    }
    
    @IBAction func reconnect(_ sender: Any) {
        mqttClient.connect()
    }
}

