import Foundation

enum CreditCardError: Error {
    case insufficientFunds(coinsNeeded: Double)
}

class CreditCard{
	unowned let owner: Person
	var balance: Double
	
	
	init(balance:Double, owner: Person){
		self.balance = balance
		self.owner = owner
	}
	func withdraw(money: Double) throws {
				guard self.balance >= money else {
					throw CreditCardError.insufficientFunds(coinsNeeded: money - self.balance)
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
//task 3
class Book {
	var title = ""
	var author = ""
	var year = 0
	init(title: String, author: String, year: Int) {
		self.title = title
		self.author = author
		self.year = year
	}
}

class Magazine: Book {
	var article = ""
	init(title: String, author: String, year: Int, article: String) {
		super.init (title: title, author: author, year: year)
		self.article = article
	}
}

class FashionMagazine: Magazine {
	var total = 0.0
	init(title: String, author: String, year: Int, article: String, total: Double) {
		super.init (title: title, author: author, year: year, article: article)
		self.total = total
	}
}
extension Book {
	func info() {
		print(self.author, self.title, self.year)
	}
}
//task 4 
struct Point: Comparable {
	var x: Double
	var y: Double
}
extension Point{
	var abs: Double{
		return pow(x*x + y*y, 0.5)
	}
}

func < (lhs: Point, rhs: Point) -> Bool {
    return lhs.abs < rhs.abs
}

func == (lhs: Point, rhs: Point) -> Bool {
    return lhs.abs == rhs.abs
}

//task 5

class Point {
	var x: Double
	var y: Double
	init (x: Double, y: Double) {
		self.x = x
		self.y = y
	}
}

extension Point{
	var average: Point{
			return Point(x: -self.x, y: -self.y)
	}
}


