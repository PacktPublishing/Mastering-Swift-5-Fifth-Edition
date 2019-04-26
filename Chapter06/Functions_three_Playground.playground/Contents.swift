import Cocoa

func getNames() -> [String] {
    var retArray = ["Jon", "Kim", "Kailey", "Kara"]
    return retArray
}

var names = getNames()

func getTeam() -> (team:String, wins:Int, percent:Double) {
    let retTuple = ("Red Sox", 99, 0.611)
    return retTuple
}

var t = getTeam()
print("\(t.team) had \(t.wins) wins")
