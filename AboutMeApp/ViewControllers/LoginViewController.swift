//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Serge Bowski on 11/24/23.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet private weak var usernameTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
//    // MARK: - Private Properties
    private let user = User.getUser()
    
    // MARK: - Override Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - Navigation
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard usernameTextField.text == user.username,
              passwordTextField.text == user.password else {
            alert(with: "Invalid login or password",
                  and: "Please, enter correct login and password") {
                self.passwordTextField.text = ""
            }
            return false
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else {
            return
        }
        
        tabBarVC.viewControllers?.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.welcomeText = user.username
                welcomeVC.nameText = user.person.name + " " + user.person.surname
                
            } else if let navigationVC = viewController as? UINavigationController {
                
                navigationVC.viewControllers.forEach { viewController in
                    if let profileVC = navigationVC.topViewController as? ProfileViewController {
                        profileVC.title = user.person.name + " " + user.person.surname
                        
                        profileVC.name = user.person.name
                        profileVC.surname = user.person.surname
                        profileVC.company = user.person.company
                        profileVC.department = user.person.department
                        profileVC.post = user.person.post
                        
                    } else if let bioVC = navigationVC.viewControllers.last as? BioViewController {
                        bioVC.bio = user.person.bio
                    }
                }
                
            }
            
        }
    }
    
    // MARK: - IB Actions
    @IBAction private func forgotUsernameAction() {
        alert(with: "Oops!", and: "Your name is \(user.username) 😉")
    }
    
    @IBAction private func forgotPasswordAction() {
        alert(with: "Oops!", and: "Your password is \(user.password) 😉")
    }
    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        passwordTextField.text = ""
        usernameTextField.text = ""
    }
    
    // MARK: - Private Methods

    private func alert(
        with title: String,
        and message: String,
        completion: (() -> ())? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        
        alert.addAction(okButton)
        present(alert, animated: true)
    }
}





