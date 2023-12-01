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

struct Person {
    let name = "Serge"
    let surname = "Bowski"
    let company = "LLC ASCP"
    let department = "IT Department"
    let post = "Hardware engineer"
    let bio = """
        My name is Serge Bowski. I'm 23. I came from the cold shores of \
        northwest Russia, straight from a harsh and \
        gloomy provincial town called Arkhangelsk. Currently, I work in the IT \
        department of a large city-forming enterprise \
        Arkhangelsk Commercial Sea Port, in the position of Hardware and support \
        engineer. In my free time I study English, \
        Swift and sometimes compose trap music. I've wanted to become an iOS \
        developer since I was 14, as soon as I saw an \
        Apple presentation where they introduced a new high-level Swift \
        language. At the age of 16, I entered the College of \
        Telecommunications, which gave me a good technical base. At the age of \
        20, I graduated from college, got a few odd \
        jobs, then at the age of 21 I got my current job. I spent the first \
        money to close some health issues, then I saved \
        up money for a MacBook and a SwiftBook course. And now, more than ever, \
        I am close to realizing my plans...
        """
    var fullName: String {
        name + " " + surname
    }
}
