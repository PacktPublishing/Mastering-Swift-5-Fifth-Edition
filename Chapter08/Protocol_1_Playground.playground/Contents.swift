import Cocoa


protocol Dog {
    var name: String { get set }
    var color: String { get set }
}

extension Dog{ func speak() -> String {
    return "Woof Woof"
    }
}


struct JackRussel: Dog{
    var name: String
    var color: String
}

class WhiteLab: Dog{
    var name: String
    
    
    var color: String
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
}

struct Mutt: Dog{
    var name: String
    var color: String
    func speak() -> String {
        return "I am hungry"
    }
    
}

let dash = JackRussel(name: "Dash", color: "Brown and White")
let lily = WhiteLab(name: "Lily", color: "White")
let maple = Mutt(name: "Buddy", color: "Brown")

let dSpeak = dash.speak()    // returns "woof woof"
let lSpeak = lily.speak()    // returns "woof woof"
let bSpeak = maple.speak()    // returns "woof woof"

