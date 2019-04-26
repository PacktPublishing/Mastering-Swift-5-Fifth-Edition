import Cocoa

func sayHello(name: String, greeting: String) {
    print("\(greeting) \(name)")
}

sayHello(name:"Jon", greeting:"Bonjour")


func sayHello2(name: String, greeting: String = "Bonjour") {
    print("\(greeting) \(name)")
}

sayHello2(name:"Jon")
sayHello2(name:"Jon", greeting: "Hello")


func sayHello3(name: String = "Test", name2: String = "Kim", greeting: String = "Bonjour") {
    print("\(greeting) \(name) and \(name2)")
}

sayHello3(name:"Jon",greeting: "Hello")
