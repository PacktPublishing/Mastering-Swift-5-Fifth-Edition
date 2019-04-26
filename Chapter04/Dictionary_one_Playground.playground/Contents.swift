import Cocoa

var countries = ["US":"United States", "IN":"India","UK":"UnitedKingdom"]
var name = countries["US"]
var cnt = countries.count
var empty = countries.isEmpty
countries["UK"] = "Great Britain"
//The value of UK is now set to "Great Britain"

var orig = countries.updateValue("Britain", forKey: "UK")

countries["FR"] = "France" //The value of "FR" is set to"France"
var orig1 = countries.updateValue("Germany", forKey: "DE")

countries["IN"] = nil //The "IN" key/value pair is removed
var orig2 = countries.removeValue(forKey:"UK")
countries.removeAll()
