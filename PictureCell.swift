//
//  PictureCell.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/22/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

// Formatting for each picture

import SwiftUI

struct PictureCell: View {
    let picture: Picture
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image(self.picture.name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
            }
        }
    }
}

/*struct PictureCell_Previews: PreviewProvider {
    static var previews: some View {
        PictureCell()
    }
}*/
