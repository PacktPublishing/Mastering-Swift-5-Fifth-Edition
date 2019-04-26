import Cocoa

var str = "Hello, playground"

for index in 1...5 {
    print(index)
}

var countries = ["USA","UK", "IN"]
for item in countries {
    print(item)
}


var dic = ["USA": "United States", "UK": "United Kingdom","IN":"India"]

for (abbr, name) in dic {
    print("\(abbr) --\(name)")
}
