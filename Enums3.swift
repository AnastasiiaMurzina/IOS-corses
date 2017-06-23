import Foundation

class CreditCard{
	unowned let owner: Person
	var balance: Double
	
	
	init(balance:Double, owner: Person){
		self.balance = balance
		self.owner = owner
	}
	func changeMoney(by money: Double){
		if (balance + money>=0){
			balance += money	
		} else {
			print("There isn't enough money")
		}
		
	}
	
}
class Person{
	let name: String
	var age: Int
	var cardsArr: [CreditCard] = []
	
	init(name: String, age: Int){
		self.name = name
		self.age = age
	}
	func app(card: CreditCard){
		cardsArr.append(card)
	}
	deinit{}
}
