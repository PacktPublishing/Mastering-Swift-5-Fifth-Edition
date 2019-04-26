import Cocoa

if #available(iOS 9.0, OSX 10.10, watchOS 2, *) {
    //Available for iOS 9, OSX 10.10, watchOS 2 or above
    print("Minimum requirements met")
} else {
    //Block on anything below the above minimum requirements
    print("Minimum requirements not met")
}

