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
        case .wifi(name: _ ):
            return "wifi - name"
		case .g3(distance: _ ):
			return "3g - distance"
		case .g4(distance: _ , code: _ ):
			return "4g - distance, code"
		default:
			return "none - none"
        }
	 }
	
}
let wf = NetworkType.wifi(name: "hey")
let wfDescription = wf.simpleDescription()
print(wfDescription)

//task3
class Student{
	let name: String
	let surname: String
	let average: Double
	
	init(_ name: String, _ surname: String, _ average: Double){
		self.name = name
		self.surname = surname
		self.average = average
	}
}

class StudentGroup{
	var group: [Student] = []
	
	func avGroup() -> Double {
		var counter = 0.0
		for item in self.group {
			counter+=item.average			
		}
		return Double(counter)/Double(self.group.count)
	}
	
	func app(_ st: Student) {
		self.group.append(st)
	}
	func delete(_ st: Student) {
    self.group = self.group.filter() { $0 !== st }
	}
	func getBetter(){
		self.group.sort( by: { s1, s2 in s1.average > s2.average} )
		print("The best students are \(self.group[0].surname), \(self.group[1].surname), \(self.group[2].surname)")
	}	
}

let stud = Student("Ann","N",1.0)
let stud1 = Student("Anna","NN",3.0)
let stud2 = Student("Nick","M",4.0)
var stg = StudentGroup()
stg.app(stud)
stg.app(stud1)
stg.app(stud2)
print(stg.avGroup())
stg.getBetter()
