import Cocoa

struct TestType {
    typealias getNumClosure = ((Int, Int) -> Int)
    
    var numOne = 5
    var numTwo = 8
    
    var results = 0;
    
    mutating func getNum(handler: getNumClosure) -> Int {
        results = handler(numOne,numTwo)
        print("Results: \(results)")
        return results
    }
}

var max: TestType.getNumClosure = {
    if $0 > $1 {
        return $0
    } else {
        return $1
    }
}

var min: TestType.getNumClosure = {
    if $0 < $1 {
        return $0
    } else {
        return $1
    }
}

var multiply: TestType.getNumClosure = {
    return $0 * $1
}

var second: TestType.getNumClosure = {
    return $1
}

var answer: TestType.getNumClosure = {
    var _ = $0 + $1
    return 42
}

var myType = TestType()

myType.getNum(handler: max)
myType.getNum(handler: min)
myType.getNum(handler: multiply)
myType.getNum(handler: second)
myType.getNum(handler: answer)

