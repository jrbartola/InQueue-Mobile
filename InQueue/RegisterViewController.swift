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
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red:0.02, green:0.07, blue:0.22, alpha:1.0)


        // Do any additional setup after loading the view.
    }

    @IBAction func allDonePressed(_ sender: Any) {
    }
}
