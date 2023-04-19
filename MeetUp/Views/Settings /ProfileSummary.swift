//
//  ProfileSummary.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/14/23.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    var body: some View {
        
                    
        HStack {
            profile.image.resizable().frame(width: 30, height: 30)
            Text(profile.username).bold().font(.title)
        }
                        
                    
                
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
