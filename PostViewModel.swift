//
//  PostViewModel.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/23/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

// Creates 2 example posts

import Foundation

class PostViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        let post1 = Post(id: 0, username: "pikachu", time: "August 2020", caption: "electric type", imageName: "pikachu")
        let post2 = Post(id: 1, username: "squirtle", time: "June 2020", caption: "water type", imageName: "squirtle")
        
        posts.append(post1)
        posts.append(post2)
    }
}
