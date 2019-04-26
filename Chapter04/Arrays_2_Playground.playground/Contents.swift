import Cocoa

var arrayOne = [1,2,3,4,5,6]
let first = arrayOne.first    //first contains
let last = arrayOne.last    //last contains 6

let multiArray = [[1,2],[3,4],[5,6]]
let arrFirst1 = multiArray[0].first     //arrFirst1 contains 1
let arrFirst2 = multiArray.first          //arrFirst2 contains[1,2]
let arrLast1 = multiArray[0].last      //arrLast1 contains 2
let arrLast2 = multiArray.last       //arrLast2 contains [5,6]


print(arrayOne.count)    //Displays 3
print(multiArray.count)    //Displays 3 for the three arrays print(multiArrayOne[0].count)    //Displays 2 for the two elements

arrayOne.shuffle()
let shuffledArray = arrayOne.shuffled()

arrayOne.insert(10, at: 3)
arrayOne[1] = 10
arrayOne.removeLast()
