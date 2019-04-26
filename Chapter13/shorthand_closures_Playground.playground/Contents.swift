import Cocoa

func testFunction(num: Int, handler:() -> Void) {
    for _ in 0..<num {
        handler()
    }
}

testFunction(num: 5,handler: {print("Hello from Shorthand closure")})
testFunction(num: 5) {
    print("Hello from Shorthand closure")
}


func testFunction2(num: Int, handler: (_ : String)->Void) {
    for _ in 0..<num {
        handler("Me")
    }
}

testFunction2(num: 5){
    print("Hello from \($0)")
}


let clos5: (String, String) -> Void = {
    print("\($0) \($1)")
}

clos5("Hello", "Kara")


let clos7 = {(first: Int, second: Int) -> Int in first + second }

clos7(40,2)
