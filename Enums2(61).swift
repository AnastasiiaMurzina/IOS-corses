//task 1

import Foundation

class Wallet{
	var balance: Double
	var state: String
	static let version: Double
	
	init(balance: Double, state: String, version: Double){
		self.balance = balance
		self.state = state
		self.version = version
	}
	
	func transaction(by money: Double){
		balance += money
	}
	func block(wal: Wallet){
		wal.state = "blocked"
	}
	func unblock(wal: Wallet){
		wal.state = "enable"
	}
}

//task2
import Foundation

class Vehicle{
	var currentSpeed = 0.0
	let maxSpeed = 220.0
	let weight = 1000.0
	let model = "Best"
	var mileage = 0.0
	func blowOut() -> Double{
		return weight * 0.001 * mileage
	}
	func signal(){}
}
class Car: Vehicle{
	let color = "black"
	override func signal(){}
}
class MotorCycle: Vehicle{
	let type = "sport"
	override func signal(){}	
	
	 override func blowOut() -> Double {
			 return weight * (type == "russianShit" ?  0.003 : 0.001) * mileage
		 }
}
class ElectroCar: Car{
	override func blowOut() -> Double {
        return 0.
    }
	override func signal(){}
}
