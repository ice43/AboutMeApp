//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Serge Bowski on 11/24/23.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet private weak var usernameTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    
    
    @IBAction private func forgotUsernameAction() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your name is User 😉",
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
    @IBAction private func forgotPasswordAction() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your password is Password 😉",
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}





