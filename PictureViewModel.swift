//
//  PictureViewModel.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/22/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

// Each cell currently a different color square

import Foundation

class PictureViewModel: ObservableObject {
    @Published var pictures = [Picture]()
    
    init() {
        pictures.append(Picture(id: 1, name: "First"))
        pictures.append(Picture(id: 2, name: "Second"))
        pictures.append(Picture(id: 3, name: "Third"))
        pictures.append(Picture(id: 4, name: "Fourth"))
        pictures.append(Picture(id: 5, name: "Fifth"))
        pictures.append(Picture(id: 6, name: "Sixth"))
        pictures.append(Picture(id: 7, name: "Seventh"))
        pictures.append(Picture(id: 8, name: "Eighth"))
        pictures.append(Picture(id: 9, name: "Ninth"))
        
        pictures.append(Picture(id: 11, name: "First"))
        pictures.append(Picture(id: 12, name: "Second"))
        pictures.append(Picture(id: 13, name: "Third"))
        pictures.append(Picture(id: 14, name: "Fourth"))
        pictures.append(Picture(id: 15, name: "Fifth"))
        pictures.append(Picture(id: 16, name: "Sixth"))
        pictures.append(Picture(id: 17, name: "Seventh"))
        pictures.append(Picture(id: 18, name: "Eighth"))
        pictures.append(Picture(id: 19, name: "Ninth"))
    }
}
