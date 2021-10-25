//
//  ContentView.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/8/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

// Controls everything

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        
        // The bottom tab bar can switch between the different "host" views
        // The icons toggle to account for the currently selected tab
        TabView(selection: $selection) {
            
            HomeHost()
                .tabItem {
                    VStack {
                        Image(selection == 0 ? "Home_A" : "Home_I")
                        Text("Home")
                    }
            }.tag(0)
            
            SearchHost()
                .tabItem {
                    VStack {
                        Image(selection == 1 ? "Search_A" : "Search_I")
                        Text("Search")
                    }
            }.tag(1)
            
            
            Text("Add")
                .tabItem {
                    VStack {
                        Image(selection == 2 ? "Add_A" : "Add_I")
                        Text("Add")
                    }
            }.tag(2)
            
            NotificationHost()
                .tabItem {
                    VStack {
                        Image(selection == 3 ? "Notification_A" : "Notification_I")
                        Text("Notification")
                    }
            }.tag(3)
            
            ProfileHost()
                .tabItem {
                    VStack {
                        Image(selection == 4 ? "Profile_A" : "Profile_I")
                        Text("Profile")
                    }
            }.tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
