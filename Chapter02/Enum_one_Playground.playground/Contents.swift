import Cocoa

enum Planets {
    case Mercury, Venus, Earth, Mars, Jupiter
    case Saturn, Uranus, Neptune
}

var planetWeLiveOn = Planets.Earth
var furthestPlanet = Planets.Neptune

// Using the traditional == operator
if planetWeLiveOn == .Earth {
    print("Earth it is")
}

// Using the switch statement
switch planetWeLiveOn {
case .Mercury:
    print("We live on Mercury, it is very hot!")
case .Venus:
    print("We live on Venus, it is very hot!")
case .Earth:
    print("We live on Earth, just right")
case .Mars:
    print("We live on Mars, a little cold")
default:
    print("Where do we live?")
}

enum Devices: String {
    case MusicPlayer = "iPod"
    case Phone = "iPhone"
    case Tablet = "iPad"
}

print("We are using an \(Devices.Tablet.rawValue)")

enum Planets2: Int {
    case Mercury = 1 
    case Venus
    case Earth
    case Mars
    case Jupiter
    case Saturn
    case Uranus
    case Neptune
}
print("Earth is planet number \(Planets2.Earth.rawValue)")
