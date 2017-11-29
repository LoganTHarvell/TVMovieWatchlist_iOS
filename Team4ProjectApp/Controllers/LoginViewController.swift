//
//  LoginViewController.swift
//  Team4ProjectApp
//
//  Created by Logan Harvell on 11/22/17.
//  Copyright © 2017 Logan Harvell. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

  private let appDelegate = UIApplication.shared.delegate as! AppDelegate
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.darkGray
  }

  @IBOutlet weak var emailTF: UITextField!
  @IBOutlet weak var passwordTF: UITextField!
  
  @IBAction func submitButton(_ sender: UIButton) {
    appDelegate.user = AppUser.initUserFromWebApp(email: emailTF.text!,
                                                  password: passwordTF.text!)
  
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let nextViewController = storyboard.instantiateViewController(withIdentifier: "WatchlistViewController")
    self.present(nextViewController, animated: true, completion: nil)
  }
}
