//task 1
import Foundation

var arr = ["Ann", "Antoni", "Sia", "Alex"]
print(arr.sorted( by: { s1, s2 in String(s1.characters.reversed()) < String(s2.characters.reversed())}))

//task 2
let arr = ["12", "34", "-76", "0", "5"]
let farray = arr.filter {!$0.contains("-")}
print(farray.flatMap{Int($0)!})
