import Cocoa

@dynamicMemberLookup
struct BaseballTeam {
    let city: String
    let nickName: String
    let wins: Double
    let losses: Double
    let year: Int
    
    subscript(dynamicMember key: String) -> String {
        switch key {
        case "fullname":
            return "\(city) \(nickName)"
        case "percent":
            let per = wins/(wins+losses)
            return String(per)
        default:
            return "Unknown request"
        }
    }

    func fullname() -> String {
        return "\(city) \(nickName)"
    }
}


var redsox = BaseballTeam(city: "Boston", nickName: "Red Sox", wins: 108, losses: 54, year: 2018)

print("The \(redsox.fullname) won \(redsox.percent) of their games in \(redsox.year)")



@dynamicMemberLookup
struct UppercaseOf {
    subscript(dynamicMember input: String) -> String {
        return input.uppercased()
    }
}

UppercaseOf().hello
UppercaseOf().newYork
