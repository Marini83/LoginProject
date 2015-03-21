//
//  LoginViewController.swift
//  LoginProject
//
//  Created by User  on 2015-03-20.
//  Copyright (c) 2015 Wub.com. All rights reserved.
//

import UIKit



class LoginViewController: UIViewController, CreateAccountViewControllerDelegate {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override  func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginToCreateAccountSegue" {
            var createAccountVC = segue.destinationViewController as CreateAccountViewController
            createAccountVC.delegate = self
        }
    }

 
    @IBAction func loginButtonPressed(sender: AnyObject) {
        let usernameSavedFromNSUserDefaults  = NSUserDefaults.standardUserDefaults().objectForKey(userNameKey)  as String
        println(usernameSavedFromNSUserDefaults)
        let passwordSavedFromNSUserDefaults  = NSUserDefaults.standardUserDefaults().objectForKey(passwordKey)  as String
        println(passwordSavedFromNSUserDefaults)
        
        if usernameTextField.text == usernameSavedFromNSUserDefaults && passwordTextField.text == passwordSavedFromNSUserDefaults{
            self.performSegueWithIdentifier("loginToMainSegue", sender: self)

        }
        
    }

    @IBAction func createAccountButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("loginToCreateAccountSegue", sender: self)
    }
    
    //CreateAccountViewControllerDelegate
    
    func accountCreated() {
        self.performSegueWithIdentifier("loginToMainSegue", sender: nil)
    }
}
