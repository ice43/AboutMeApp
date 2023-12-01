//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Serge Bowski on 11/24/23.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet private weak var welcomeLabel: UILabel!
    @IBOutlet private weak var nameLabel: UILabel!
    
    var welcomeText = ""
    var nameText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(welcomeText)!"
        nameLabel.text = "My name is \(nameText)"
    }
}
