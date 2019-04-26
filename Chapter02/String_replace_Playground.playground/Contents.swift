import Cocoa

var stringOne = "one,to,three,four"
var stringTwo = stringOne.replacingOccurrences(of: "to", with: "two")
print(stringTwo)

