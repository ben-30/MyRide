//
//  PostCell.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/23/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

// Each post will follow a PostCell format

import SwiftUI

struct PostCell: View {
    let post: Post
    
    // To toggle between different icons
    @State var liked = false
    @State var saved = false
    
    // Profile picture with username and date
    var header: some View {
        HStack {
            Image(post.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .padding(.leading)
            
            VStack(alignment: .leading) {
                Text(post.username).font(.system(size: 14)).bold()
                Text(post.time).font(.system(size: 14))
            }
            
            Spacer()
        }
        .padding([.top])
    }
    
    // Like, comment, save
    var actionButtons: some View {
        HStack {
            
            HStack {
                Image(self.liked ? "Like_A" : "Like_I")
                Text("like")
            }
            .onTapGesture {
                self.liked.toggle()
            }
            
            Spacer()
            
            HStack {
                Image("Comment_I")
                Text("comment")
            }
            .onTapGesture {
                print("Commented")
            }
            
            Spacer()
            
            HStack {
                Image(self.saved ? "Save_A" : "Save_I")
                Text(self.saved ? "saved" : "save")
            }
            .onTapGesture {
                self.saved.toggle()
            }
        }
        .padding([.leading, .trailing])
    }
    
    // Text caption of picture
    var caption: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(post.caption)
            }
            .padding([.leading, .trailing])
            
            Spacer()
        }
    }
    
    var body: some View {
        VStack {
            header
            
            Image(post.imageName)
            
            caption
            
            actionButtons
            
            Spacer()
        }
    }
}

/*struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}*/
