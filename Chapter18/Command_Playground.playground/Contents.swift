import Cocoa

protocol Command {
    func execute()
}

struct RockerSwitchLightOnCommand: Command {
    func execute() {
        print("Rocker Switch:Turning Light On")
    }
}

struct RockerSwitchLightOffCommand: Command {
    func execute() {
        print("Rocker Switch:Turning Light Off")
    }
}
struct PullSwitchLightOnCommand: Command {
    func execute() {
        print("Pull Switch:Turning Light On")
    }
}

struct PullSwitchLightOffCommand: Command {
    func execute() {
        print("Pull Switch:Turning Light Off")
    }
}

struct Light {
    var lightOnCommand: Command
    var lightOffCommand: Command
    
    func turnOnLight() {
        self.lightOnCommand.execute()
    }
    
    func turnOffLight() {
        self.lightOffCommand.execute()
    }
}

var on = PullSwitchLightOnCommand()
var off = PullSwitchLightOffCommand()
var light = Light(lightOnCommand: on, lightOffCommand: off)
light.turnOnLight()
light.turnOffLight()

light.lightOnCommand = RockerSwitchLightOnCommand()
light.turnOnLight()

