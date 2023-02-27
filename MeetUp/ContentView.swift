//
//  ContentView.swift
//  MeetUp
//
//  Created by Sanjana Jobalia on 19/02/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tabs = .schedule

    enum Tabs {
        case availability
        case friends
        case schedule
        case chats
        case settings
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            createEmptyView(name: "availability")
                .tabItem {
                    Label("availability", systemImage: "calendar.badge.plus")
                }
                .tag(Tabs.availability)
            createEmptyView(name: "friends")
                .tabItem {
                    Label("friends", systemImage: "person.3.fill")
                }
                .tag(Tabs.friends)
            createEmptyView(name: "schedule")
                .tabItem {
                    Label("schedule", systemImage: "calendar.badge.plus")
                }
                .tag(Tabs.schedule)
            createEmptyView(name: "chats")
                .tabItem {
                    Label("chats", systemImage: "message")
                }
                .tag(Tabs.chats)
            createEmptyView(name: "settings")
                .tabItem {
                    Label("settings", systemImage: "gearshape")
                }
                .tag(Tabs.settings)
        }
    }

    func createEmptyView(name: String) -> some View {
        return Text("This is the \(name) view").padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
