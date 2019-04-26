import Cocoa


let guests = ["Jon", "Kim", "Kailey", "Kara"]

guests.map { name in
    print("Hello \(name)")
}


guests.map {print("Hello \($0)")}

var messages = guests.map {
    (name:String) -> String in
    return "Welcome \(name)"
}

for str in messages {
    print(str)
}

let greetGuest = { (name:String) -> Void in
    print("Hello guest named \(name)")
}

let sayGoodbye = { (name:String) -> Void in
    print("Goodbye \(name)")
}


let greetGuest2 = {
    (name:String) -> Void in
    if (name.hasPrefix("K")) {
        print("\(name) is on the guest list")
    } else {
        
        
        print("\(name) was not invited")
    }
}


func temperatures(calculate:(Int)->Void) {
    var tempArray = [72,74,76,68,70,72,66]
    tempArray.map(calculate)
}

func testFunction() {
    var total = 0
    var count = 0
    let addTemps = {
        (num: Int) -> Void in
        total += num
        count += 1
    }
    temperatures(calculate: addTemps)
    print("Total: \(total)")
    print("Count: \(count)")
    print("Average: \(total/count)")
}

testFunction()
