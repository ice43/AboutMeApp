//
//  User.swift
//  AboutMeApp
//
//  Created by Serge Bowski on 11/30/23.
//

import Foundation

struct User {
    let username: String
    let password: String
    let photo: String
    
    let person: Person
    
    static func getUser() -> User {
        User(
            username: "user",
            password: "pass",
            photo: "pic_profile",
            
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let department: String
    let post: String
    let bio: String
    
    var fullName: String {
        name + " " + surname
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Serge",
            surname: "Broski",
            company: "LLC ASCP",
            department: "IT Department",
            post: "Hardware engineer",
            bio: "My name is Serge Broski. I came from the cold shores of northwest Russia..."
        )
    }
}
