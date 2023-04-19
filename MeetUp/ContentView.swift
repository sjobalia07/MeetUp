//
//  ContentView.swift
//  MeetUp
//
//  Created by Sanjana Jobalia on 19/02/23.
//

import SwiftUI

struct ContentView: View {
// To make the naivgation bar at bottom of the app
    @State private var selection: Tab = .schedule
    enum Tab {
            case setting
            case chats
            case meetingNotes
            case schedule
            case tasks
        }
    var body: some View {
        TabView(selection: $selection) {
            // To make the naivgation bar at bottom of the app
            
            TaskView().tabItem {
                Label("Tasks", systemImage: "checklist")
            }.tag(Tab.tasks)
            
            MeetingNotes().tabItem {
                Label("Meeting Notes", systemImage: "pencil.circle")
            }.tag(Tab.meetingNotes)
            
            ScheduleView().tabItem {
                Label("Schedule", systemImage: "calendar")
            }.tag(Tab.schedule)
            
            ChatView().tabItem {
                Label("Chat", systemImage: "message")
            }.tag(Tab.chats)
            
            SettingView().tabItem {
                Label("Setting", systemImage: "gear")
            }.tag(Tab.setting)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
