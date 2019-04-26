import Cocoa

struct  MyValueType  {
    var  name:  String
    var  assignment:  String
    var  grade:  Int
    
}

class  MyReferenceType  {
    var  name:  String
    var  assignment:  String
    var  grade:  Int
    
    init(name:  String,  assignment:  String,  grade:  Int)  {
        self.name  =  name
        self.assignment  =  assignment
        self.grade  =  grade
    }
}


func  getGradeForAssignment(assignment:  inout  MyValueType)  {
    //  Code  to  get  grade  from  DB
    //  Random  code  here  to  illustrate  issue
    let  num  =  Int(arc4random_uniform(20)  +  80)
    assignment.grade  =  num
    print("Grade  for  \(assignment.name)  is  \(num)")
}

var  mathGrades  =  [MyValueType]()
var  students  =  ["Jon",  "Kim",  "Kailey",  "Kara"]
var  mathAssignment  =  MyValueType(name:  "",  assignment:  "Math  Assignment", grade:  0)
for  student  in  students  {
    mathAssignment.name  =  student
    getGradeForAssignment(assignment:  &mathAssignment)
    mathGrades.append(mathAssignment)
}

for  assignment  in  mathGrades  {
    print("\(assignment.name):  grade  \(assignment.grade)")
}

