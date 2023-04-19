//
//  ProfileHost.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/14/23.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @State private var draftProfile = Profile.default
    @EnvironmentObject var modelData: ModelData
    var body: some View {
       
            
        HStack {
            Divider()
            ProfileSummary(profile: modelData.profile)
            if editMode?.wrappedValue == .active {
                                Button("Cancel", role: .cancel) {
                                    draftProfile = modelData.profile
                                    editMode?.animation().wrappedValue = .inactive
                                }
                            }
            Spacer()
            EditButton()
            Divider()
                        

        }
        if editMode?.wrappedValue == .inactive {
                        ProfileSummary(profile: modelData.profile)
                    } else {
                        ProfileEditor(profile: $draftProfile).onAppear {
                            draftProfile = modelData.profile
                        }
                        .onDisappear {
                            modelData.profile = draftProfile
                        }
                    }
                
                
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost().environmentObject(ModelData())
    }
}
