import Foundation
protocol Transferable {
	func transfer(fromID: Int, toID: Int, money: Double)
}
enum CreditCardError: Error {
    case insufficientFunds(coinsNeeded: Double)
	case depositError
	func stringValue()->String{
		switch self {
			case . insufficientFunds(let money):
				return "You haven't enough money. Get \(money) more for buying."
			case . depositError:
				return "You have some strange problems???"
		}
			
	}
}

class BankAccount {
	let id: Int
	var balance: Double
	
	
	init(balance:Double, id: Int){
		self.balance = balance
		self.id = id
	}
	func withdraw(money: Double) throws {
				guard self.balance >= money else {
					throw CreditCardError.insufficientFunds(coinsNeeded: money - self.balance)
				}
	}
	func deposit() -> Double{
		return self.balance
	}
}

class Customs: Transferable {
	let id: Int
	var bankAccount: BankAccount
	init(id: Int, bankAccount: BankAccount){
		self.bankAccount = bankAccount
		self.id = id
	}
	func transfer (fromID: Int, toID: Int, money: Double) {
		// I need compare fromID with all exist bankAccount's IDs and then use withdraw - Is it necessary?????
	}
}

class Physic: Customs {
	let firstName: String
	let secondName: String
	let birthDay: Date
	init (id: Int, bankAccount: BankAccount, firstName: String, secondName: String, birthDay: Date) {
		self.firstName = firstName
		self.secondName = secondName
		self.birthDay = birthDay
		super.init (id: id, bankAccount: bankAccount)
	}
	deinit{}	
}

enum TypesOfOrgs {
	case OOO, OAO
	func stringValue()->String{
		switch self {
			case .OOO:
				return "OOO"
			case .OAO:
				return "OAO"
		}
	}
}

class Organization: Customs {
	let orgName: String
	let typeOrg: TypesOfOrgs
	init (id: Int, bankAccount: BankAccount, orgName: String, typeOrg: TypesOfOrgs) {
		self.orgName = orgName
		self.typeOrg = typeOrg
		super.init (id: id, bankAccount: bankAccount)
	}
	deinit{}	
}

class Bank {
	var bankAccount: BankAccount
	init(bankAccount: BankAccount){
		self.bankAccount = bankAccount
	}
	var delegate: Transferable?
	func transfer (fromID: Int, toID: Int, money: Double) {
		
	}
	
}
