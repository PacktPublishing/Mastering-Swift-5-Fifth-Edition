import Cocoa

let clos1 = { () -> Void in
    print("Hello World")
}

clos1()

let clos2 = {
    (name: String) -> Void in
    print("Hello \(name)")
}

func testClosure(handler: (String) -> Void) {
    handler("Dasher")
}

clos2("Jon")
testClosure(handler: clos2)

let clos3 = {
    (name: String) -> String in
    return "Hello \(name)"
}

var message = clos3("Buddy")
print(message)
