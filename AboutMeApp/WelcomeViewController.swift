//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Serge Bowski on 11/24/23.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet private weak var welcomeLabel: UILabel!
    
    var welcomeText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = welcomeText
    }

    
}
