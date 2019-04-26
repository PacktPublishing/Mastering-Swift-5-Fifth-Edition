import Cocoa

let arrayOne = [1,2]
let arrayTwo = [3,4]
var combined = arrayOne + arrayTwo //combine contains 1, 2, 3 and 4

let arrayThree = [1,2,3,4,5]
var subArray = arrayThree[2...4] //subArray contains 3, 4 and 5
var subArrayTwo = arrayThree[2..<4] //subArray contains 3 and 4

let arrayFour = [1,2,3,4,5]
var a = arrayFour[..<3]    //subArray contains 1, 2 and 3
var b = arrayFour[...3]    //subArray contains 1, 2, 3 and 4
var c = arrayFour[2...]    //subArray contains 3, 4 and 5

var arrayFive = [1,2,3,4,5]
arrayFive[1...2] = [12,13]


