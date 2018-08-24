//
//  Validation.swift
//  Nepstar
//
//  Created by Parlad Dhungana on 2018-08-21.
//  Copyright © 2018 Parlad Dhungana. All rights reserved.
//

import UIKit


enum regex: String {
    case email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
    case password = "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}"
}


enum alertMsg: String {
    case invalidEmailOrPassword = "Invalid Email or Password"
    case invalidEamil = "Email is not valid"
    case invalidePassword = "Password must be at least one: uppercase,digit,\nlowercase, and 8 characters long"
    
}

enum ValdationType {
    case email
    case password
}

class Validation{
    
    static let shared = Validation()
    
    func Validate(validate: ValdationType, inputString: String, regex: regex) -> Bool {
        
        var tempValue: Bool
        switch validate {
            case .email:
             
               tempValue = isValidRegex(inputString, regex: .email)
                return tempValue
            
            case .password:
            
              tempValue = isValidRegex(inputString, regex: .password)
                return tempValue
        }
    }
    

    
    func isValidRegex(_ inputString: String, regex: regex) -> Bool{
        
        let stringTest = NSPredicate(format:"SELF MATCHES %@", regex.rawValue)
        let result = stringTest.evaluate(with: inputString)
        return result
    }
    
}
