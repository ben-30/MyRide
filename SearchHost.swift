//
//  SearchHost.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/17/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

// Search needs implementation

import SwiftUI

struct SearchHost: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Search")
                    .bold()
                    .font(.title)
                    .padding(.leading, 20)
                Spacer()
            }
            
            Divider()
            Spacer()
        }
    }
}

struct SearchHost_Previews: PreviewProvider {
    static var previews: some View {
        SearchHost()
    }
}
