//task 1
import Foundation

enum Days: Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
	
	func numberOfDay() -> Int {
		return self.rawValue
	}	
}
print(Days.monday.numberOfDay())
print(Days(rawValue: 7)!)

//task 2
enum NetworkType {
	case wifi (name:String)
	case g3 (distance: Double)
	case g4 (
	distance:Double,
	code:Int
	)
	case None
	 func simpleDescription() -> String {
        switch self {
        case .wifi(name: "name"):
            return "wifi - name"
		case .g3(distance: 0):
			return "3g - distance"
		case .g4(distance: 0, code: 0):
			return "4g - distance, code"
		default:
			return "none - none"
        }
	 }
	
}
let wf = NetworkType.wifi(name:"name")
let wfDescription = wf.simpleDescription()
print(wfDescription)

//task3

class Student{
	let name = ""
	let surname = ""
	let average = 0.0
}

class StudentGroup{
	var group: [Student] = []
	
	func avGroup() -> Double {
		var counter = 0.0
		var k = 0
		for item in self.group {
			k+=1
			counter+=item.average			
		}
		return Double(counter)/Double(k)
	}
	
	init(_ st: Student){
		self.group.append(st)
	}
	func remove(object: Student) {
        if let index = index(where: { $0 === object }) {
             self.group.remove(at: index)
        }
    }
	
	
	
}
  
