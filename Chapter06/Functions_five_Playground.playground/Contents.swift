import Cocoa

func sayHello(greeting: String, names: String...) {
    for name in names {
        print("\(greeting) \(name)")
    }
}


sayHello(greeting:"Hello", names: "Jon", "Kim")

func reverse(first: inout String, second: inout String) {
    let tmp = first
    first = second
    second = tmp
}

var one = "One"
var two = "Two"
reverse(first: &one, second: &two)
print("one: \(one) two: \(two)")


func sayHello(_ name: String, greeting: String) {
    print("\(greeting) \(name)")
}

sayHello("Jon", greeting: "Hi")



func isValidIP(ipAddr: String?) ->Bool {
    
    guard let ipAddr = ipAddr else {
        return false
    }
    let octets = ipAddr.split { $0 == "."}.map{String($0)}
    guard octets.count == 4 else {
        return false
    }
    for octet in octets {
        guard validOctet(octet: octet) else {
            return false
        }
    }
    return true
}

func validOctet(octet: String) ->Bool {
    guard let num = Int(String(octet)),num >=  0 && num < 256 else {
        return false
    }
    return true
}

isValidIP(ipAddr: "192.168.1")
