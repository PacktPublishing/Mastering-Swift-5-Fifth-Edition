import Cocoa

var arrayOne = [9,3,6,2,8,5]
arrayOne.sort(){ $0 < $1 }  //arrayOne contains 2,3,5,6,8 and 9
arrayOne.sort(){ $0 > $1 }  //arrayOne contains 9,8,6,5,3 and 2

let sorted = arrayOne.sorted(){ $0 < $1 }

var arrayTwo = [9,3,6,2,8,5]
arrayTwo.sort(by: <)



