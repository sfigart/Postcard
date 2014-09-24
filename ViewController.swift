//
//  ViewController.swift
//  Postcard
//
//  Created by Stephen Figart on 9/16/14.
//  Copyright (c) 2014 Stephen Figart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Name label Challenge 1
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        // Set message label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        // Clean up form
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        
        // Give up keyboard
        enterMessageTextField.resignFirstResponder()
        
        // Update mail button
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}

