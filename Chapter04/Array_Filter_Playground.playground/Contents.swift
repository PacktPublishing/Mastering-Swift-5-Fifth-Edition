import Cocoa

var arrayOne = [1,2,3,4,5,6,7,8,9]
let filtered = arrayOne.filter{$0 > 3 && $0 < 7}
//filtered contains 4,5 and 6
filtered

var city = ["Boston", "London", "Chicago", "Atlanta"]
let filteredCity = city.filter{$0.range(of:"o") != nil}
//filtered contains "Boston", "London" and "Chicago"


