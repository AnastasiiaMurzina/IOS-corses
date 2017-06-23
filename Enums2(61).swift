//task 1

import Foundation

enum states : String{
		case blocked, enable, disable
	}

class Wallet{
	var balance: Double
	var state: states
	static let version = 2.1
	init(balance: Double, state: states){
		self.balance = balance
		self.state = state
	}
	
	func transaction(by money: Double){
		if balance + money>0{
			balance += money
		} else {
			print("There isn't enough money")
		}
	}
	func block(wal: Wallet){
		wal.state = states.blocked
	}
	func unblock(wal: Wallet){
		wal.state = states.enable
	}
}

//task2
import Foundation

enum types : String{
		case chopper, sport, scooter, russianShit
	}

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
class MotorCycle {
	let type: types
	let mainProp: Vehicle
	init(mainProp: Vehicle,type: types){
		self.mainProp = mainProp
		self.type = type
	}
	func signal(){}	
	 func blowOut() -> Double {
			 return mainProp.weight * (type == types.russianShit ?  0.003 : 0.001) * mainProp.mileage
		 }
}
class ElectroCar: Car{
	override func blowOut() -> Double {
        return 0.0
    }
	override func signal(){}
}
