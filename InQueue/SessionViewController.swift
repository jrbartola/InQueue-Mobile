//
//  SessionViewController.swift
//  InQueue
//
//  Created by Jesse Bartola on 7/9/17.
//  Copyright © 2017 queue. All rights reserved.
//

import UIKit

class SessionViewController: UIViewController {

    @IBOutlet weak var startSessionButton: UIButton!
    @IBOutlet weak var joinSessionButton: UIButton!
    @IBOutlet weak var backButton: UIButton!

    @IBOutlet weak var startThePartyLabel: UILabel!
    @IBOutlet weak var joinThePartyLabel: UILabel!
    @IBOutlet weak var orLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextColors()
        // Do any additional setup after loading the view.
    }
    
    func setupTextColors() {
        self.view.backgroundColor = COLOR_SCHEME[0]
        startSessionButton.setTitleColor(COLOR_SCHEME[3], for: .normal)
        joinSessionButton.setTitleColor(COLOR_SCHEME[3], for: .normal)
        backButton.setTitleColor(COLOR_SCHEME[2], for: .normal)
        
        startThePartyLabel.textColor = COLOR_SCHEME[2]
        joinThePartyLabel.textColor = COLOR_SCHEME[2]
        orLabel.textColor = COLOR_SCHEME[3]
    }
    
    @IBAction func startSessionPressed(_ sender: AnyObject) {
        let title = "Almost there!"
        let message = "Would you like to give a title?"
        let textFieldText = "Title goes here..."
        
        setupSuccessModal(title: title, message: message, textFieldText: textFieldText)
    }
    
    @IBAction func joinSessionPressed(_ sender: AnyObject) {
        let title = "Enter session code:"
        let message = ""
        let textFieldText = "Ex: 123456"
        
        setupSuccessModal(title: title, message: message, textFieldText: textFieldText)
    }
    
    func setupSuccessModal(title: String, message: String, textFieldText: String = "") {
        //1. Create the alert controller.
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.placeholder = textFieldText
        }
        
        // 3. Add a new action which grabs the value from the text field, and prints it when the user clicks OK.
        let confirmAction = UIAlertAction(title: "Go!", style: .default, handler: { [weak alert] (_) in
            let textField = alert!.textFields![0]
            print("Text field: \(textField.text!)")
            // Ideally, want to setup a segue to the main up next view controller here
            self.performSegue(withIdentifier: "joinParty", sender: nil)
        })
        
        let backAction = UIAlertAction(title: "Back", style: .cancel, handler: { [weak alert] (_) in
            // Do nothing, simply return to parent view controller
        })
        
        // 3. Attach our UIAlertActions to the UIAlertController
        alert.addAction(confirmAction)
        alert.addAction(backAction)
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
    

}
