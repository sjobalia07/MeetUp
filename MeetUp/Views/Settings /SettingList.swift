//
//  SettingList.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/14/23.
//

import SwiftUI

struct SettingList: View {
    var body: some View {
        NavigationView{
            List(settings) { setting in
                SettingRow(setting: setting)
            }.navigationTitle("Settings")
        }
        
    }
}

struct SettingList_Previews: PreviewProvider {
    static var previews: some View {
        SettingList()
    }
}
