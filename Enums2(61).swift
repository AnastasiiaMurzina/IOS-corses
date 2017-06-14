//task 1

import Foundation

class Wallet{
	var balance: Double
	var state: String
	static let version = 2.1
	
	init(balance: Double, state: String){
		self.balance = balance
		self.state = state
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
	var currentSpeed: Double
	let maxSpeed: Double
	let weight: Double
	let model: String
	var mileage: Double
	
	init(currentSpeed: Double, maxSpeed:Double, weight: Double, model:String, mileage: Double){
		self.currentSpeed = currentSpeed
		self.maxSpeed = maxSpeed
		self.weight = weight
		self.model = model
		self.mileage = mileage
	}
	
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
        return 0.0
    }
	override func signal(){}
}
