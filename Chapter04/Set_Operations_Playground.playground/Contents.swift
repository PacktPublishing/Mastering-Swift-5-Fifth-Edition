import Cocoa

var mySet1 = Set(["One", "Two", "Three", "abc"])
var mySet2 = Set(["abc","def","ghi", "One"])

var newSetUnion = mySet1.union(mySet2)

var newSetSubtract = mySet1.subtracting(mySet2)

var newSetIntersect = mySet1.intersection(mySet2)

var newSetExclusiveOr = mySet1.symmetricDifference(mySet2)

