//task 1
import Foundation

enum Days: Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
	
	func numberOfDay() -> Int {
		return self.rawValue
	}
	func stringValue()->String{
		switch self {
			case .monday:
				return "monday"
			case .tuesday:
				return "tuesday"
			case .wednesday:
				return "wednesday"
			case .thursday:
				return "thursday"
			case .friday:
				return "friday"
			case .saturday:
				return "saturday"
			case .sunday:
				return "sunday"
		}
	}
}
print(Days.monday.numberOfDay())
print(Days.sunday.stringValue())

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
        case .wifi(let name):
            return "wifi - \(name)"
		case .g3(let distance):
			return "3g - \(distance)"
		case .g4(let distance, let code):
			return "4g - \(distance),\(code)"
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
		for (i,stud) in self.group.enumerated() {
			if (stud === st) {
        		self.group.remove(at: i)
    		}
		}
	}
	func getBetter(){
		self.group.sort( by: { $0.average > $1.average} )
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

//task 4

/*Классы имеют дополнительные возможности, которые не имеют структуры:

Наследование позволяет одному классу наследовать характеристики другого.
Приведение типов позволяет вам проверять и интерпретировать тип экземпляра класса во время выполнения.
Deinitializers позволяют экземпляру класса освобождать все ресурсы, которые он назначил.
Счетчик ссылок допускает более одной ссылки на экземпляр класса.*/

//task 5
struct Point { 
    var x: Float
    var y: Float

    init(x: Float, y: Float) {
        self.x = x
        self.y = y
    }
}

struct Circle{
	var center: Point
	var square: Double
	var radius: Double {
        get {
            return pow((square / .pi), 0.5)
        }
        set(newRadius) {
			radius = newRadius
			square = .pi*pow(radius, 2)
        }
    }
}
//task6
struct Point { 
    var x: Float
    var y: Float

    init(x: Float, y: Float) {
        self.x = x
        self.y = y
    }
}
	struct Vector {
	var begin: Point
	var end: Point 
	mutating func thisPlusOneOther(by extra: Vector) {
        end.x += extra.end.x
		end.y += extra.end.y
    }
	mutating func thisMinusOneOther(by extra: Vector) {
        end.x -= extra.end.x
		end.y -= extra.end.y
    }
	mutating func rotation(by angle: Float){
		begin.x = begin.x * cos(angle) - begin.y * sin(angle)
		begin.y = begin.x * sin(angle) + begin.y * cos(angle)
		end.x = end.x * cos(angle) - end.y * sin(angle)
		end.y = end.x * sin(angle) + end.y * cos(angle)
	}	
	
}
