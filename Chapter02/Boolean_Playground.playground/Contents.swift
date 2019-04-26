import Cocoa

let isSwiftCool = true
var isItRaining = false
if isSwiftCool {
    print("YEA, I cannot wait to learn it")
}
if isItRaining {
    print("Get a rain coat")
}
isItRaining = !isItRaining
isItRaining.toggle()
if isItRaining {
    print("Get a rain coat")
}

