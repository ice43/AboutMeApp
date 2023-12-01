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
    
    
    var user: User?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = user?.person.name
        surnameLabel.text = user?.person.surname
        companyLabel.text = user?.person.company
        departmentLabel.text = user?.person.department
        postLabel.text = user?.person.post
        
        profileView.layoutIfNeeded()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profileView.layer.cornerRadius = profileView.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else {
            return
        }
        
        bioVC.bio = user?.person.bio ?? ""
    }

}

