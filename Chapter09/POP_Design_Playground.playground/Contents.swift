import Cocoa

protocol Animal {
    var hitPoints: Int { get set }
}

extension Animal {
    mutating func takeHit(amount: Int) {
        hitPoints -= amount
    }
    func hitPointsRemaining() -> Int {
        return hitPoints
    }
    func isAlive() -> Bool {
        return hitPoints > 0 ? true : false
    }
}

protocol LandAnimal: Animal {
    var landAttack: Bool { get }
    var landMovement: Bool { get }
    
    func doLandAttack()
    func doLandMovement()
}

protocol SeaAnimal: Animal {
    var seaAttack: Bool { get }
    var seaMovement: Bool { get }
    
    func doSeaAttack()
    func doSeaMovement()
}

protocol AirAnimal: Animal {
    var airAttack: Bool { get }
    var airMovement: Bool { get }
    
    func doAirAttack()
    func doAirMovement()
}

struct Lion: LandAnimal {
    var hitPoints = 20
    let landAttack = true
    let landMovement = true
    
    func doLandAttack() {
        print("Lion Attack")
    }
    func doLandMovement() {
        print("Lion Move")
    }
}

struct Alligator: LandAnimal, SeaAnimal {
    var hitPoints = 35
    let landAttack = true
    let landMovement = true
    let seaAttack = true
    let seaMovement = true
    
    func doLandAttack() {
        print("Alligator Land Attack")
    }
    func doLandMovement() {
        print("Alligator Land Move")
    }
    func doSeaAttack() {
        print("Alligator Sea Attack")
    }
    func doSeaMovement() {
        print("Alligator Sea Move")
    }
}

var animals = [Animal]()

animals.append(Alligator())
animals.append(Alligator())
animals.append(Lion())

for (index, animal) in animals.enumerated() {
    if let _ = animal as? AirAnimal {
        print("Animal at \(index) is Air")
    }
    if let _ = animal as? LandAnimal {
        print("Animal at \(index) is Land")
    }
    if let _ = animal as? SeaAnimal {
        print("Animal at \(index) is Sea")
    }
}

for (index, animal) in animals.enumerated() where animal is SeaAnimal {
    print("Only Sea Animal: \(index)")
}
