import Cocoa

//Initializes an empty set of the String type
var mySet = Set<String>()

//Initializes a mutable set of the String type with initial values
var mySet1 = Set(["one", "two", "three"])

mySet.insert("One")
mySet.insert("Two")
mySet.insert("Three")
print("\(mySet.count) items")
var contain = mySet.contains("Two")

for item in mySet {
    print(item)
}
var item = mySet.remove("Two")
for item in mySet {
    print(item)
}
