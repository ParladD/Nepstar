//
//  RegisterViewController.swift
//  Nepstar
//
//  Created by Parlad Dhungana on 2018-08-24.
//  Copyright © 2018 Parlad Dhungana. All rights reserved.
//

import UIKit

class RegisterViewController: LoginAndRegisterProtocols{
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!{
        didSet{
            emailTextField.addTarget(self, action: #selector(handleRegisterValidatonCheck), for: .editingChanged)
        }
    }
    @IBOutlet weak var passwordTextField: UITextField!{
        didSet{
            passwordTextField.addTarget(self, action: #selector(handleRegisterValidatonCheck), for: .editingChanged)
        }
    }
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var infoLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setUpViews(firstButton: registerButton, secondButton: loginButton, fText: "Already have an account?", sText: " Login")
    }
    
    
    
    //MARK: - IBOutlets actions
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        let loginUpController = storyboard?.instantiateViewController(withIdentifier: "LoginController") as! LoginController
        present(loginUpController, animated: true, completion: nil)
        
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        
    }
    
    
    //MARK: - Helper Functions/ Methods
    
    @objc func handleRegisterValidatonCheck(){
        
    
        if (checkValidation(textField: emailTextField, validationType: .email, regex: .email, infoLabel: infoLabel) && checkValidation(textField: passwordTextField, validationType: .password, regex: .password, infoLabel: infoLabel)){
            
            registerButton.enabledOrDisabledButton(isEnabled: true, bgColor: UIColor.redGreenBlue(red: 255, green: 16, blue: 57), borderWidth: 1, UIColor.white)
            
        }else{
            
            registerButton.enabledOrDisabledButton(isEnabled: false, bgColor: UIColor.redGreenBlue(red: 209, green: 63, blue: 96), borderWidth: 0, nil)
            
        }
        
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
