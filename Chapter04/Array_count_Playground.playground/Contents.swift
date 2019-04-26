import Cocoa

let arrayOne = [95, 90, 75, 80,60]
let count = arrayOne.count{ $0 >= 90 }
count

var city = ["Boston", "London", "Chicago", "Atlanta"]
let count1 = city.count{$0.range(of:"o") != nil}
count1
