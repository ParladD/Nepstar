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
            
            loginButton.isEnabled = true
            loginButton.backgroundColor = UIColor(red: 225/255, green: 16/255, blue: 57/255, alpha: 1)
            loginButton.layer.borderWidth = 1
            loginButton.layer.borderColor = UIColor.white.cgColor
            

        }else{
            loginButton.layer.borderWidth = 0
            loginButton.isEnabled = false
            loginButton.backgroundColor = UIColor(red: 209/255, green: 63/255, blue: 96/255, alpha: 1)
        }
        
   
    }
    
  
    
    fileprivate func checkValidation(textField: UITextField, validationType: ValdationType, regex: regex) -> Bool{
        guard let checkString = textField.text, checkString.count > 0 else { return false}
        
        if (Validation.shared.Validate(validate: validationType, inputString: checkString, regex: regex)){
            
            textField.backgroundColor = UIColor(red: 152/255, green: 251/255, blue: 152/255, alpha: 1)
            infoLabel.isHidden = true
           return true
        }else{

            infoLabel.isHidden = false
            infoLabel.text = checkValidationType(validationType: validationType)
            textField.backgroundColor = UIColor(red: 252/255, green: 96/255, blue: 126/255, alpha: 1)
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









