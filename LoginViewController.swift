//
//  LoginViewController.swift
//  InQueue
//
//  Created by Jesse Bartola on 7/9/17.
//  Copyright © 2017 queue. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var inqueueLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextColors()

    }
    
    func setupTextColors() {
        self.view.backgroundColor = COLOR_SCHEME[0]
        inqueueLabel.textColor = COLOR_SCHEME[2]
        emailLabel.textColor = COLOR_SCHEME[3]
        passwordLabel.textColor = COLOR_SCHEME[3]
        loginButton.setTitleColor(COLOR_SCHEME[2], for: .normal)
        registerButton.setTitleColor(COLOR_SCHEME[2], for: .normal)
    }
    
    @IBAction func loginButtonPressed(_ sender: AnyObject) {
        let email = emailTextField.text!
        let password = emailTextField.text!
        
        print(email, password)
    }
    
    

}
