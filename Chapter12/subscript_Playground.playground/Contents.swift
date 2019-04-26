import Cocoa


class MyNames {
    private var names = ["Jon", "Kim", "Kailey", "Kara"]
    subscript(index: Int) -> String {
        get {
            return names[index]
        }
        set {
            names[index] = newValue
        }
    }
}

var nam = MyNames()
print(nam[0])    //Displays 'Jon'
nam[0] = "Buddy"
print(nam[0])    //Displays 'Buddy'

// ###############################################

struct MathTable {
    var num: Int
    subscript(multiply index: Int) -> Int {
        return num * index
    }
    subscript(addition index: Int) -> Int {
        return num + index
    }
}


var table = MathTable(num: 5)
print(table[multiply: 4])    //Displays 20 because 5*4=20
print(table[addition: 4])


// ###############################################

struct Hello {
    subscript (name: String) -> String {
        return "Hello \(name)"
    }
}

var hello = Hello()
print(hello["Jon"])
