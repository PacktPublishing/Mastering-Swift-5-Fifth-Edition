import Cocoa


class Plant {
    var height = 0.0
    var age = 0
    func growHeight(inches: Double) {
        self.height += inches;
    }
    func getDetails() -> String {
        return "Height:\(height) age:\(age)"
    }
}

class Tree: Plant {
    private var limbs = 0
    func limbGrow() {
        self.limbs += 1
    }
    func limbFall() {
        self.limbs -= 1
    }
    override func getDetails() -> String {
        let details = super.getDetails()
        return "\(details) limbs:\(limbs)"
    }
}


class PineTree: Tree {
    var needles = 0
}

class OakTree: Tree {
    var leaves = 0
}


var tree = Tree()
tree.age = 5
tree.height = 4
tree.limbGrow()
tree.limbGrow()
print(tree.getDetails())
