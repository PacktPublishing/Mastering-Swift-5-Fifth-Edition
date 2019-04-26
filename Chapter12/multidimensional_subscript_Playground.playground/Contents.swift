import Cocoa

struct TicTacToe {
    var board = [["","",""],["","",""],["","",""]]
    subscript(x: Int, y: Int) -> String {
        get {
            return board[x][y]
        }
        set {
            board[x][y] = newValue
        }
    }
}

var board = TicTacToe()
board[1,1] = "x"
board[0,0] = "o"





struct SayHello {
    subscript(messageText message: String, messageName name: String, number number: Int) -> [String]{
        var retArray: [String] = []
        for _ in 0..<number {
            retArray.append("\(message) \(name)")
        }
        return retArray
    }
}

var message = SayHello()
var ret = message[messageText:"Bonjour",messageName:"Jon",number:5]

