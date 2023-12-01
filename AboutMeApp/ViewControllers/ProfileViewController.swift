//
//  ProfileViewController.swift
//  AboutMeApp
//
//  Created by Serge Bowski on 11/30/23.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    @IBOutlet private weak var profileView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var surnameLabel: UILabel!
    @IBOutlet private weak var companyLabel: UILabel!
    @IBOutlet private weak var departmentLabel: UILabel!
    @IBOutlet private weak var postLabel: UILabel!
    
    var name = ""
    var surname = ""
    var company = ""
    var department = ""
    var post = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = name
        surnameLabel.text = surname
        companyLabel.text = company
        departmentLabel.text = department
        postLabel.text = post
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        profileView.layer.cornerRadius = profileView.frame.width / 2
    }

}

