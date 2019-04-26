import Cocoa

func deferFunction(){
    print("Function started")
    var str: String?
    
    defer {
        print("In defer block")
        if let s = str {
            print("str is \(s)")
        }
    }
    str = "Jon"
    print("Function finished")
}


deferFunction()
