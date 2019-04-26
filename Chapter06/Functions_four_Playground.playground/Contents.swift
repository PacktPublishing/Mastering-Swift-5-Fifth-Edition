import Cocoa

func getTeam() -> (team:String, wins:Int, percent:Double?) {
    let retTuple: (String, Int, Double?) = ("Red Sox", 99, nil)
    return retTuple
}

func getTeam2(id: Int) -> (team:String, wins:Int, percent:Double)? {
    if id == 1 {
        return ("Red Sox", 99, 0.611)
    }
    return nil
}

func winPercentage(baseballTeam team: String, withWins wins: Int, andLoses losses: Int) -> Double {
    return Double(wins) / Double(wins + losses)
}
var per = winPercentage(baseballTeam:"Red Sox", withWins:99, andLoses:63)

