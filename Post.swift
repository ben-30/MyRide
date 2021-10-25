//
//  Post.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/23/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

// Posts populate on home screen

import Foundation

struct Post: Identifiable {
    let id: Int
    let username: String
    let time: String
    let caption: String
    let imageName: String
}
