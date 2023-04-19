//
//  SettingData.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/13/23.
//

import Foundation
import SwiftUI
import Combine
final class ModelData: ObservableObject {
    @Published var profile = Profile.default
}

let setting0=SingleSetting(id: 0, name: "Profile",imageName: "person.circle", colour: Color.mint)

let setting1 = SingleSetting(id: 1, name: "Starred Messages",imageName: "star.circle", colour: Color.yellow)

let setting2 = SingleSetting(id: 2, name: "Linked Devices", imageName: "link", colour: Color.blue)

let setting3 = SingleSetting(id: 3, name: "Account", imageName: "cursorarrow.click", colour: Color.teal)

let setting4 = SingleSetting(id: 4, name: "Chats", imageName: "message.circle", colour: Color.green)

let setting5 = SingleSetting(id: 5, name: "Notifications", imageName: "paperplane", colour: Color.orange)

let setting6 = SingleSetting(id: 6, name: "Google Calendar", imageName: "calendar", colour: Color.red)

let setting7 = SingleSetting(id: 7, name: "Alarm Settings", imageName: "alarm", colour: Color.mint)

let setting8 = SingleSetting(id: 8, name: "Time Settings", imageName: "timer", colour: Color.indigo)

var settings: [SingleSetting] = [setting0,setting1,setting2,setting3,setting4,setting5,setting6,setting7,setting8]