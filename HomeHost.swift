//
//  HomeHost.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/23/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

// Formatting for home screen

import SwiftUI
import ASCollectionView

struct HomeHost: View {
    @ObservedObject var viewModel = PostViewModel()
    
    // Currently fills screen with data from viewModel
    // Will need to fetch data upon further implementation
    var postSections: ASTableViewSection<Int> {
        ASTableViewSection(id: 0, data: viewModel.posts) { post, _ in
            PostCell(post: post)
        }
    }
    
    var body: some View {
        VStack {
            HStack {  // top header section
                Text("Home")
                    .bold()
                    .font(.title)
                    .padding(.leading, 20)
                Spacer()
            }
            Divider()
            
            NavigationView {  // displays each post
                ASTableView(section: postSections)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            }
        }
    }
}

struct HomeHost_Previews: PreviewProvider {
    static var previews: some View {
        HomeHost()
    }
}
