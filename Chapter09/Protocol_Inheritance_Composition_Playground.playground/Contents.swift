import Cocoa

protocol Name {
    var firstName: String { get set }
    var lastName: String { get set }
}

protocol Age {
    var age: Double { get set }
}

protocol Fur {
    var furColor: String { get set }
}

protocol Hair {
    var hairColor: String { get set }
}

protocol Person: Name, Age, Hair {
    var height: Double { get set }
}

protocol Dog: Name, Age, Fur {
    var breed: String { get set }
}

protocol Occupation {
    var occupationName: String { get set }
    var yearlySalary:Double { get set }
    var experienceYears: Double { get set }
}



struct Programmer: Person, Occupation {
    var firstName: String
    var lastName: String
    var age: Double
    var hairColor: String
    var height: Double
    var occupationName: String
    var yearlySalary: Double
    var experienceYears: Double
}
