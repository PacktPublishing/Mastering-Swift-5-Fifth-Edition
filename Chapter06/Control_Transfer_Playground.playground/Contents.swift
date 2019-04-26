import Cocoa

for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    print("\(i) is odd")
}

for i in 1...10 {
    if i % 2 == 0 {
        break
    }
    print("\(i) is odd")
}

var name = "Jon"
var sport = "Baseball"
switch sport {
case "Baseball":
    print("\(name) plays Baseball")
    fallthrough
case "Basketball":
    print("\(name) plays Basketball")
    fallthrough
default:
    print("Unknown sport")
}

