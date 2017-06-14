//task 1
import Foundation

var arr = ["Ann", "Antoni", "Sia", "Alex"]
print(arr.sorted( by: { s1, s2 in String(s1.characters.reversed()) < String(s2.characters.reversed())}))

//task 2
let arr = ["12", "34", "-76", "0", "5"]
var farr = arr.flatMap{Int($0)}
print(farr.filter{$0 >= 0})
