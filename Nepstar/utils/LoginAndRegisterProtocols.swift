//
//  LoginAndRegisterProtocols.swift
//  Nepstar
//
//  Created by Parlad Dhungana on 2018-08-24.
//  Copyright © 2018 Parlad Dhungana. All rights reserved.
//

import UIKit

class LoginAndRegisterProtocols: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    func setUpViews(firstButton: UIButton, secondButton: UIButton, fText: String, sText: String){
        firstButton.designUIButton()
        secondButton.designButttonText(fText, sText)
    }
        
    
     func checkValidation(textField: UITextField, validationType: ValdationType, regex: regex, infoLabel: UILabel) -> Bool{
        guard let checkString = textField.text, checkString.count > 0 else { return false}
        
        if (Validation.shared.Validate(validate: validationType, inputString: checkString, regex: regex)){
            
            textField.backgroundColor = UIColor.redGreenBlue(red: 152, green: 251, blue: 252)
            infoLabel.isHidden = true
            return true
        }else{
            
            infoLabel.isHidden = false
            infoLabel.text = checkValidationType(validationType: validationType)
            textField.backgroundColor = UIColor.redGreenBlue(red: 252, green: 96, blue: 126)
            return false
        }
    }
    
     func checkValidationType(validationType: ValdationType) -> String {
        
        switch validationType {
        case .email:
            return alertMsg.invalidEamil.rawValue
        case .password:
            return alertMsg.invalidePassword.rawValue
        }
        
    }
    

    
}

