//
//  CreateAccountViewController.swift
//  LoginProject
//
//  Created by User  on 2015-03-20.
//  Copyright (c) 2015 Wub.com. All rights reserved.
//

import UIKit

protocol CreateAccountViewControllerDelegate {
    func accountCreated()
}

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var chooseUsernameTextField: UITextField!
    @IBOutlet weak var choosePasswordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
  
    
    var delegate:CreateAccountViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func createAccountButtonPressed(sender: UIButton) {
        if choosePasswordTextField.text == confirmPasswordTextField.text  && choosePasswordTextField.text.isEmpty != true {
            NSUserDefaults.standardUserDefaults().setObject(self.chooseUsernameTextField.text, forKey: userNameKey)
            
            NSUserDefaults.standardUserDefaults().setObject(self.choosePasswordTextField.text, forKey: passwordKey)
            
            NSUserDefaults.standardUserDefaults().synchronize()
            
            self.dismissViewControllerAnimated(true, completion: nil)
            
            delegate?.accountCreated()

            
        }


    }

  

    @IBAction func cancelButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
