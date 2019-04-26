import Cocoa

var path = "/one/two/three/four"

//Create start and end indexes
let startIndex = path.index(path.startIndex, offsetBy: 4)
let endIndex = path.index(path.startIndex, offsetBy: 14)

let sPath = path[startIndex ..< endIndex] //returns the "/two/three"
//convert the substring to a string
let newStr = String(sPath)

path[..<startIndex]    //returns the "/one"
path[endIndex...]    //returns the "/four"

path.last
path.first

