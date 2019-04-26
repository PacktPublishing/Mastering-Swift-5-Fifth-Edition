import Cocoa

protocol FloorPlan {
    var bedRooms: Int { get set }
    var utilityRooms: Int { get set }
    var bathRooms: Int { get set }
    var kitchen: Int { get set }
    var livingRooms: Int { get set }
}

struct HouseFloorPlan: FloorPlan {
    var bedRooms = 0
    var utilityRooms = 0
    var bathRooms = 0
    var kitchen = 0
    var livingRooms = 0
}


struct House {
    var stories = [FloorPlan]()
    mutating func addStory(floorPlan: FloorPlan) {
        stories.append(floorPlan)
    }
}

struct HouseProxy {
    var house = House()
    
    mutating func addStory(floorPlan: FloorPlan) -> Bool {
        if house.stories.count < 3 {
            house.addStory(floorPlan: floorPlan)
            return true
        } else {
            return false
        }
    }
}

var ourHouse = HouseProxy()

var basement = HouseFloorPlan(bedRooms: 0, utilityRooms: 1, bathRooms:1,kitchen: 0, livingRooms: 1)
var firstStory = HouseFloorPlan (bedRooms: 1, utilityRooms: 0,bathRooms: 2,kitchen: 1, livingRooms: 1)
var secondStory = HouseFloorPlan (bedRooms: 2, utilityRooms: 0,bathRooms: 1,kitchen: 0, livingRooms: 1)
var additionalStory = HouseFloorPlan (bedRooms: 1, utilityRooms: 0,bathRooms:1, kitchen: 1, livingRooms: 1)

ourHouse.addStory(floorPlan: basement)
ourHouse.addStory(floorPlan: firstStory)
ourHouse.addStory(floorPlan: secondStory)
ourHouse.addStory(floorPlan: additionalStory)


