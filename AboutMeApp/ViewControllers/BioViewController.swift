//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Serge Bowski on 12/1/23.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet private weak var bioLabel: UILabel!
    
    var bio = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bioLabel.text = bio
    }
}
