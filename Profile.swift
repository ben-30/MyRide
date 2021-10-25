//
//  Profile.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/13/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

/*
 Profile information has been sorted into different vars for each user
 Int var for gender (0 male, 1 female, 2 other)
*/

import Foundation

struct Profile {
    var fullname: String
    var username: String
    var bio: String
    var email: String
    var gender: Int
    var birthdayMonth: Int
    var birthdayDay: Int
    var birthdayYear: Int
    var country: String
    var language: String
    var posts: Int
    var followers: Int
    var following: Int
    
    static let `default` = Self(fullname: "Name", username: "Username", bio: "Bio", email: "Email", gender: 0, birthdayMonth: 1, birthdayDay: 1, birthdayYear: 2000, country: "United States", language: "English", posts: 0, followers: 0, following: 0)
    
    init(fullname: String, username: String, bio: String, email: String, gender: Int, birthdayMonth: Int, birthdayDay: Int, birthdayYear: Int, country: String, language: String, posts: Int, followers: Int, following: Int) {
        self.fullname = fullname
        self.username = username
        self.bio = bio
        self.email = email
        self.gender = gender
        self.birthdayMonth = birthdayMonth
        self.birthdayDay = birthdayDay
        self.birthdayYear = birthdayYear
        self.country = country
        self.language = language
        self.posts = posts
        self.followers = followers
        self.following = following
    }
}
