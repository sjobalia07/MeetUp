//
//  SettingRow.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/13/23.
//

import SwiftUI

struct SettingRow: View {
    var setting: SingleSetting
    var body: some View {
        HStack {
            
            setting.image
                .foregroundColor(setting.colour)
                .frame(width: 25, height: 50)
            Text(setting.name)
            Spacer()
                }
    }
}

struct SettingRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
                    SettingRow(setting: settings[0])
                    SettingRow(setting: settings[1])
                }
                .previewLayout(.fixed(width: 300, height: 70))
    }
}
