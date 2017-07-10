//
//  RegisterViewController.swift
//  InQueue
//
//  Created by Jesse Bartola on 7/9/17.
//  Copyright © 2017 queue. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var allDoneButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var signupLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var confirmLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextColors()

    }
    
    func setupTextColors() {
        self.view.backgroundColor = COLOR_SCHEME[0]
        signupLabel.textColor = COLOR_SCHEME[2]
        emailLabel.textColor = COLOR_SCHEME[3]
        passwordLabel.textColor = COLOR_SCHEME[3]
        confirmLabel.textColor = COLOR_SCHEME[3]
        
        allDoneButton.setTitleColor(COLOR_SCHEME[2], for: .normal)
        backButton.setTitleColor(COLOR_SCHEME[2], for: .normal)
    }

    @IBAction func allDonePressed(_ sender: Any) {
    }
}
