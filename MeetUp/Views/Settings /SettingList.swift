//
//  SettingList.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/14/23.
//

import SwiftUI

struct SettingList: View {
    @State private var username: String = ""
    var body: some View {
        
            
            NavigationView{
                List(settings) { setting in
                    NavigationLink {
                        setting.destination
                        
                                    } label: {
                                        SettingRow(setting: setting)
                                    }
                }.navigationTitle("Settings")
                Spacer()
            }
        
    }
}

struct SettingList_Previews: PreviewProvider {
    static var previews: some View {
        SettingList()
    }
}
