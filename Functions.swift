//task last
import Foundation

func upString (_ myString: String) -> String{
	return myString.uppercased()
}

func loString (_ myString: String) -> String{
	return myString
}

func check (_ chString: String){
	if chString.contains("!"){
		print ("String will be uppercased:")
		print (upString(chString))
	} else {
		print ("I don't change:")
		print (loString(chString))
	}
}

var mystr = "It's line!"
check (mystr)
