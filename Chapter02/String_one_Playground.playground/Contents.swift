import Cocoa

var stringOne = "Hello"
for char in stringOne {
    print(char)
}

stringOne.map {
    print($0)
}


