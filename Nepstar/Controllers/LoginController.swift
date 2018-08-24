//
//  ViewController.swift
//  Nepstar
//
//  Created by Parlad Dhungana on 2018-08-21.
//  Copyright © 2018 Parlad Dhungana. All rights reserved.
//

import UIKit

class LoginController: LoginAndRegisterProtocols {
    
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!{
        didSet{
            emailTextField.addTarget(self, action: #selector(handleLoginValidationCheck), for: .editingChanged)
        }
    }
    @IBOutlet weak var passwordTextField: UITextField!{
        didSet{
            passwordTextField.addTarget(self, action: #selector(handleLoginValidationCheck), for: .editingChanged)
        }
    }
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var infoLabel: UILabel!
    
    
    //MARK: - IBOutlets Actions
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
       
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
        let signUpController = storyboard?.instantiateViewController(withIdentifier: "RegisterController") as! RegisterViewController
        
        present(signUpController, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews(firstButton: loginButton,secondButton: signUpButton, fText: "Don't Have an account?", sText: " Sign up")
    }
    
    
    //MARK: - Funtions / methods
    
    @objc func handleLoginValidationCheck(){
        
        if (checkValidation(textField: emailTextField, validationType: .email, regex: .email, infoLabel: infoLabel) && checkValidation(textField: passwordTextField, validationType: .password, regex: .password, infoLabel: infoLabel)){
            
            loginButton.enabledOrDisabledButton(isEnabled: true, bgColor: UIColor.redGreenBlue(red: 255, green: 16, blue: 57), borderWidth: 1, UIColor.white)
            
        }else{
            
            loginButton.enabledOrDisabledButton(isEnabled: false, bgColor: UIColor.redGreenBlue(red: 209, green: 63, blue: 96), borderWidth: 0, nil)
            
        }
        
    }
    
    

}









