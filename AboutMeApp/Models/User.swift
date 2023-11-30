//
//  User.swift
//  AboutMeApp
//
//  Created by Serge Bowski on 11/30/23.
//

import Foundation

struct User {
    let username = "user"
    let password = "pass"
    
    let person: Person
    
    static func getUser() -> User {
        User(person: Person())
    }
}
