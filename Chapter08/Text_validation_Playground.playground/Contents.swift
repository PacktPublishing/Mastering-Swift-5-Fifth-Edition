import Cocoa

protocol TextValidating {
    var regExFindMatchString: String { get }
    var validationMessage: String { get }
}


extension TextValidating {
    var regExMatchingString: String {
        get {
            return regExFindMatchString + "$"
        }
    }
    func validateString(str: String) -> Bool {
        if let _ = str.range(of:regExMatchingString, options:.regularExpression){
            return true
        } else {
            return false
        }
    }
    func getMatchingString(str: String) -> String? {
        if let newMatch = str.range(of:regExFindMatchString, options:.regularExpression) {
            return String(str[newMatch])
        } else {
            return nil
        }
    }
}


struct AlphaValidation: TextValidating {
    static let sharedInstance = AlphaValidation()
    private init(){}
    
    let regExFindMatchString = "^[a-zA-Z]{0,10}"
    let validationMessage = "Can only contain Alpha characters"
}

struct AlphaNumericValidation: TextValidating {
    static let sharedInstance = AlphaNumericValidation()
    private init(){}
    let regExFindMatchString = "^[a-zA-Z0-9]{0,15}"
    let validationMessage = "Can only contain Alpha Numeric characters"
}

struct DisplayNameValidation: TextValidating {
    static let sharedInstance = DisplayNameValidation()
    private init(){}
    let regExFindMatchString = "^[\\s?[a-zA-Z0-9\\-_\\s]]{0,15}"
    let validationMessage = "Can only contain Alphanumeric Characters"
}

var testString = "abc123"

var alpha = AlphaValidation.sharedInstance
alpha.getMatchingString(str:testString)
alpha.validateString(str: testString)
