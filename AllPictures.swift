//
//  AllPictures.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/16/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

// Sent here upon pressing "See all pictures"

import SwiftUI
import ASCollectionView

struct AllPictures: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var viewModel = PictureViewModel()
    var profile: Profile
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action: { self.presentationMode.wrappedValue.dismiss() })
                {
                    Image("BackToProfile")  // X button
                        .padding(.leading, 20)
                        .padding(.bottom, 20)
                }
                Spacer()
            }
            Divider()
            
            // Header
            Image("Profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .padding(.top, 15)
            Text(self.profile.fullname)
                .font(.title)
                .foregroundColor(Color.blue)
                .padding(5)
            
            // Tab to switch between all and saved
            // Needs implementation
            Divider()
            HStack {
                Image("Grid")
                Spacer()
                Image("Floppy")
            }
            .padding(.leading, 100)
            .padding(.trailing, 100)
            .padding(.top, 10)
            .padding(.bottom, 10)
            Divider()
            
            // 3 columns of pictures
            ASCollectionView(data: viewModel.pictures) { picture, _ in
                PictureCell(picture: picture)
            }
            .layout(self.layout)
            .padding(.top, 5)
        }
        
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
        
    // Layout of 3 column picture grid
    var layout: ASCollectionLayout<Int> {
        ASCollectionLayout(scrollDirection: .vertical, interSectionSpacing: 0) {
            ASCollectionLayoutSection {
                let width = NSCollectionLayoutDimension.fractionalWidth(1 / 3)
                
                let itemSize = NSCollectionLayoutSize(widthDimension: width, heightDimension: .fractionalHeight(1.0))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let inset = CGFloat(2.0)
                item.contentInsets = NSDirectionalEdgeInsets(top: inset, leading: inset, bottom: inset, trailing: inset)
                
                let layoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: width)
                
                let itemGroup = NSCollectionLayoutGroup.horizontal(layoutSize: layoutSize, subitems: [item])
                
                return NSCollectionLayoutSection(group: itemGroup)
            }
        }
    }
}

struct AllPictures_Previews: PreviewProvider {
    static var previews: some View {
        AllPictures(profile: Profile.default)
    }
}
