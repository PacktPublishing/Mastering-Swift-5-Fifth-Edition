import Cocoa

var arrayOne = ["one", "two", "three"]
for item in arrayOne {
    print(item)
}

var arrayTwo = ["one", "two", "three"]
for (index,value) in arrayTwo.enumerated() {
    print("\(index) \(value)")
}

