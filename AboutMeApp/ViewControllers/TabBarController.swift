//
//  TabBarController.swift
//  AboutMeApp
//
//  Created by Serge Bowski on 12/6/23.
//

import UIKit

class TabBarController: UITabBarController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.items?.last?.title = user.person.fullName
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let profileVC = navigationVC.topViewController
                guard let profileVC = profileVC as? ProfileViewController else {
                    return
                }
                profileVC.user = user
            }
        }
    }

}
