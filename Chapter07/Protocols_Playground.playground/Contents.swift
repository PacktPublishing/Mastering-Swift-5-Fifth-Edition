import Cocoa

protocol FullName {
    var firstName: String { get set }
    var lastName: String { get set }
    
    func getFullName() -> String
}


class Scientist: FullName {
    var firstName = ""
    var lastName = ""
    var field = ""
    
    func getFullName() -> String {
        return "\(firstName) \(lastName) studies \(field)"
    }
    
}
struct FootballPlayer: FullName {
    var firstName = ""
    var lastName = ""
    var number = 0
    
    func getFullName() -> String {
        return "\(firstName) \(lastName) has the number \(number)"
    }
}

var scientist = Scientist()
scientist.firstName = "Kara"
scientist.lastName = "Hoffman"
scientist.field = "Physics"
var player = FootballPlayer()
player.firstName = "Dan"
player.lastName = "Marino"
player.number = 13

var person: FullName
person = scientist
print(person.getFullName())
person = player
print(person.getFullName())


extension String {
    var firstLetter: Character? {
        get {
            return self.first
        }
    }
    
    func reverse() -> String {
        var reverse = ""
        for letter in self {
            reverse = "\(letter)" + reverse
        }
        return reverse
    }
}

var myString = "Learning Swift is fun"
print(myString.reverse())
print(myString.firstLetter!)
