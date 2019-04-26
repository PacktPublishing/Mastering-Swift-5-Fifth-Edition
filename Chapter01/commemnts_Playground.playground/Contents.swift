import Cocoa

/**
 The myAdd function will take two integers, add
 them together and return the sum

 - parameter first:  The first integer to add
 - parameter second:  The second integer to add
 - returns:  The sum of the two integers
 - throws: Our error
*/
func myAdd(first: Int, second: Int) -> Int {
    //add the two integers together
    let sum: Int = first+second
    return sum
}

myAdd(first: 5, second: 10)

