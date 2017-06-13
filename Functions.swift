//task last
import Foundation


func checker (_ chString: String) -> ((String) -> String) {
  func cupser(name: String) -> (String) {
    return "Cups: \(name.uppercased())"
  }
	func lowString(name: String) -> (String) {
    return "\(name)"
  }
	if chString.contains("!"){
		return cupser
	}
	return lowString
  
}
let str = "String"
let foo = checker(str)
print(foo(str))

