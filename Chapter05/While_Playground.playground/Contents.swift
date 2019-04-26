import Cocoa

var ran = 0
while ran < 7 {
    ran = Int.random(in: 1..<20)
}



repeat {
    ran = Int.random(in: 1..<20)
} while ran < 4

