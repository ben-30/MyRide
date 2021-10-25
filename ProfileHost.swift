//
//  ProfileHost.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/13/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

// View that is called by ContentView

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var mode
    @State var draftProfile = Profile.default

    init() {
        UITableView.appearance().tableFooterView = UIView()
    }
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {  // header
                    Text("\(draftProfile.username)")
                        .bold()
                        .font(.title)
                        .padding(.leading, 20)
                    Spacer()
                    EditButton()
                        .padding(.trailing, 20)
                }
                
                Divider()
                
                // All the profile formatting done in ProfileSummary
                ProfileSummary(profile: draftProfile)
                
                // "See all pictures" button navigates to AllPictures view
                NavigationLink(destination: AllPictures(profile: draftProfile)) {
                    Text("See all pictures")
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                        .padding(.bottom, 15)
                }
            }
        }
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
