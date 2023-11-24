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
    
    // MARK: - Private Properties
    private let username = "user"
    private let password = "pass"
    
    // MARK: - Override Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK: - Navigation
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard usernameTextField.text == username,
              passwordTextField.text == password else {
            invalidData()
            return false
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.welcomeText = "Welcome, \(usernameTextField.text ?? "")!"
    }
    
    // MARK: - IB Actions
    @IBAction private func forgotUsernameAction() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your name is \(username) 😉",
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
    @IBAction private func forgotPasswordAction() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your password is \(password) 😉",
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        passwordTextField.text = ""
        usernameTextField.text = ""
    }
    
    // MARK: - Private Methods
    private func invalidData() {
        let alert = UIAlertController(
            title: "Invalid login or password",
            message: "Please, enter correct login and password",
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
}





