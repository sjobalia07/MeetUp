//
//  ProfileEditor.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/14/23.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    var body: some View {
        List {
                    HStack {
                        Text("Username").bold()
                        Divider()
                        TextField("Username", text: $profile.username)
                    }
                }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
