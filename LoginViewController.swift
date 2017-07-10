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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red:0.02, green:0.07, blue:0.22, alpha:1.0)

    }
    
    @IBAction func loginButtonPressed(_ sender: AnyObject) {
        let email = emailTextField.text!
        let password = emailTextField.text!
        
        print(email, password)
    }
    
    

}
