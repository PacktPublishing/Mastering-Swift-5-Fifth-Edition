import Cocoa

var arrayOne = [10, 20, 30, 40]
let applied = arrayOne.map{ $0 / 10}
//applied contains 1,2,3 and 4
applied

var arrayTwo = [1, 2, 3, 4]
let appliedTwo = arrayTwo.map{ "num:\($0)"}
//applied contains "num:1", "num:2", "num:3" and "num:4"
appliedTwo
