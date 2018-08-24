//
//  ViewController.swift
//  Nepstar
//
//  Created by Parlad Dhungana on 2018-08-21.
//  Copyright © 2018 Parlad Dhungana. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!{
        didSet{
            emailTextField.addTarget(self, action: #selector(handleValidationCheck), for: .editingChanged)
        }
    }
    @IBOutlet weak var passwordTextField: UITextField!{
        didSet{
            passwordTextField.addTarget(self, action: #selector(handleValidationCheck), for: .editingChanged)
        }
    }
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
        
    }
    
    //MARK: - IBOutlets Actions
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
       
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
        
    }
    
    
    
    //MARK: - Funtions / methods
    
    fileprivate func setUpViews(){
        loginButton.designUIButton()
        signUpButton.designButttonText("Don't have an account? ", "Sign Up")
        
        
        }
    
    @objc func handleValidationCheck(){
        
        if checkValidation(textField: emailTextField, validationType: .email, regex: .email) && checkValidation(textField: passwordTextField, validationType: .password, regex: .password){
            
            loginButton.enabledOrDisabledButton(isEnabled: true, bgColor: UIColor.redGreenBlue(red: 255, green: 16, blue: 57), borderWidth: 1, UIColor.white)
 
        }else{
            
            loginButton.enabledOrDisabledButton(isEnabled: false, bgColor: UIColor.redGreenBlue(red: 209, green: 63, blue: 96), borderWidth: 0, nil)
           
        }
   
    }
    
  
    
    fileprivate func checkValidation(textField: UITextField, validationType: ValdationType, regex: regex) -> Bool{
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
    
    fileprivate func checkValidationType(validationType: ValdationType) -> String {
       
        switch validationType {
        case .email:
            return alertMsg.invalidEamil.rawValue
        case .password:
            return alertMsg.invalidePassword.rawValue
        }
        
    }
    
}









