//
//  ProfileSummary.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/13/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

// Displays all user information

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    var body: some View {

        // structs for views listed in extension
        // each user var has a struct to format the information
        // profile var passed to struct
        VStack {
            Top(profile2: profile)
            Follow(profile2: profile)
            
            List {
                Email(profile2: profile)
                Birthday(profile2: profile)
                Gender(profile2: profile)
                Country(profile2: profile)
                Language(profile2: profile)
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}

extension ProfileSummary {
    struct Top: View {
        let profile2: Profile
        var body: some View {
            HStack {
                Spacer()
                VStack() {
                    Image("Profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .padding(.top, 15)
                    Text(self.profile2.fullname)
                        .font(.title)
                        .foregroundColor(Color.blue)
                        .padding(5)
                    Text(self.profile2.bio)
                        .font(.caption)
                        .foregroundColor(Color.gray)
                }
                Spacer()
            }
        }
    }
    
    struct Email: View {
        let profile2: Profile
        var body: some View {
            HStack {
                Image("envelope")
                Text(profile2.email)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    .padding(10)
            }
        }
    }
    
    struct Birthday: View {
        let profile2: Profile
        var body: some View {
            HStack {
                Image("cake")
                Text("\(profile2.birthdayMonth)" + "/" + "\(profile2.birthdayDay)" + "/" + "\(profile2.birthdayYear)")
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    .padding(10)
            }
        }
    }
    
    struct Gender: View {
        let profile2: Profile
        var body: some View {
            HStack {
                Image("person")
                if (profile2.gender == 2) {
                    Text("Other")
                        .foregroundColor(Color.gray)
                        .padding(10)
                }
                else {
                    Text(profile2.gender == 0 ? "Male" : "Female")
                        .fontWeight(.medium)
                        .foregroundColor(Color.gray)
                        .padding(10)
                }
            }
        }
    }
    
    struct Country: View {
        let profile2: Profile
        var body: some View {
            HStack {
                Image("globe")
                Text(profile2.language)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    .padding(10)
            }
        }
    }
    
    struct Language: View {
        let profile2: Profile
        var body: some View {
            HStack {
                Image("location")
                Text(profile2.country)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    .padding(10)
            }
        }
    }
    
    struct Follow: View {
        let profile2: Profile
        var body: some View {
            HStack {
                Spacer()
                
                VStack {
                    Text("Posts")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    Text("\(profile2.posts)")
                }
                .padding(10)
                
                //Spacer()
                
                VStack {
                    Text("Followers")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    Text("\(profile2.followers)")
                }
                .padding(5)
                
                //Spacer()
                
                VStack {
                    Text("Following")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    Text("\(profile2.following)")
                }
                .padding(5)
                
                Spacer()
            }
        }
    }
}
