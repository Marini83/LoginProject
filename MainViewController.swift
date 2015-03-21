//
//  MainViewController.swift
//  LoginProject
//
//  Created by User  on 2015-03-20.
//  Copyright (c) 2015 Wub.com. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        usernameLabel.text = NSUserDefaults.standardUserDefaults().objectForKey(userNameKey) as? String
        passwordLabel.text = NSUserDefaults.standardUserDefaults().objectForKey(passwordKey) as? String 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
