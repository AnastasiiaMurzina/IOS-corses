import Foundation

protocol Areable{
	func area() -> Double
}

class Square: Areable {
	var a = 0.0
	init (a: Double){
		self.a = a
	}
	func area() -> Double {
		return a * a
	}
}

class Rectangle: Areable {
	var a = 0.0
	var b = 0.0
	init (a: Double, b: Double){
		self.a = a
		self.b = b
	}
	func area() -> Double {
		return self.a * self.b
	}
}

class Triangle: Areable {
	var a = 0.0
	var b = 0.0
	var c = 0.0
	init (a: Double, b: Double, c: Double){
		self.a = a
		self.b = b
		self.c = c
	}
	func area() -> Double {
		let p = (a + b + c) / 2.0
		return pow(p * (p - a) * (p - b) * (p - c), 0.5)
	}
	
}

//task 2

//task 3

//coming soon *possible*
