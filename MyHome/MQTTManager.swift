import CocoaMQTT

class MQTT {
	
	static let client = CocoaMQTT(clientID: "iOS Device", host: "192.168.100.66", port: 1883)
}
