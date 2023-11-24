//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Serge Bowski on 11/24/23.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    var welcomeText = ""
    
    @IBOutlet private weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = welcomeText
    }
    
}
