//
//  NotificationHost.swift
//  MyRide
//
//  Created by Ben Nguyen on 7/17/20.
//  Copyright © 2020 Ben Nguyen. All rights reserved.
//

// Notification needs implementation

import SwiftUI

struct NotificationHost: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Notifications")
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

struct NotificationHost_Previews: PreviewProvider {
    static var previews: some View {
        NotificationHost()
    }
}
