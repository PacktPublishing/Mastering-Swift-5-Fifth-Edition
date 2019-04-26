import Cocoa

var stringOne = "Hello Swift"
var stringTwo = ""
stringOne.isEmpty  //false
stringTwo.isEmpty  //true
stringOne == "hello swift"  //false
stringOne == "Hello Swift"  //true
stringOne.hasPrefix("Hello")  //true
stringOne.hasSuffix("Hello")  //false
