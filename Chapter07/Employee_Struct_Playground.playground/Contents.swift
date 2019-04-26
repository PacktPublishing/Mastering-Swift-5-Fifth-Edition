import Cocoa

struct EmployeeStruct {
    var firstName = ""
    var lastName = ""
    var salaryYear: Double = 0.0 {
        willSet(newSalary) {
            print("About to set salaryYear to \(newSalary)")
        }
        didSet {
            if salaryWeek>oldValue {
                print("\(firstName) got a raise.")
            }else {
                print("\(firstName) did not get a raise.")
            }
        }
    }
    
    
    var salaryWeek: Double {
        get{
            return self.salaryYear/52
        }
        set{
            self.salaryYear = newValue*52
        }
    }
    
    init() {
        self.firstName = ""
        self.lastName = ""
        self.salaryYear = 0.0
    }
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = 0.0
    }
    init(firstName: String, lastName: String, salaryYear: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = salaryYear
    }
    
    
    func getFullName() -> String {
        return firstName + " " + lastName
    }
    
    mutating func giveRase(amount: Double) {
        self.salaryYear += amount
    }
    
}



var f = EmployeeStruct(firstName: "Jon", lastName: "Hoffman", salaryYear: 39_000)
print(f.salaryWeek) //prints 750.00 to the console
f.salaryWeek = 1000
print(f.salaryWeek) //prints 1000.00 to the console
print(f.salaryYear) //prints 52000.00 to the console
print(f.getFullName())
f.giveRase(amount: 10000.00)
print(f.salaryYear)
