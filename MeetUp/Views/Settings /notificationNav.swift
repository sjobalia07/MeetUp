//
//  chatNav.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/19/23.
//

import SwiftUI

struct notificationNav: View {
    @State private var enableNots = true
    @State private var textNots = true
    @State private var docNots = true
    @State private var newMeetNots = true
    @State private var meetReminderNots = true
    @State private var meetingStatusNots = true
    @State private var taskNots = true
    @State private var taskReminderNots = true
    @State private var timeBeforeMeet = Date.now
    @State private var timeBeforetask = Date.now
    var body: some View {
        VStack {
            Text("All Notifications")
                .font(.subheadline).foregroundColor(Color.gray)
            Toggle("Enable Notifications", isOn:$enableNots )
            Group {
                lineView()
                Text("Message Notifications")
                    .font(.subheadline).foregroundColor(Color.gray)
                
                Toggle("Text Notifications", isOn:$textNots)
                Toggle("Document Upload Notifications", isOn:$docNots)
                Toggle("New Meeting Notifications", isOn:$newMeetNots)
                
                Toggle("Meeting Reminder", isOn:$meetReminderNots)
                DatePicker("Time Before Meeting: ", selection:$timeBeforeMeet, displayedComponents:.hourAndMinute)
                Toggle("Meeting Status", isOn:$meetingStatusNots)
            }
            lineView()
            Text("Task Notifications")
                .font(.subheadline).foregroundColor(Color.gray)
            Toggle("Task Notifcations", isOn:$taskNots)
            Toggle("Task Reminders", isOn:$taskReminderNots)
            DatePicker("Time Before Task: ", selection:$timeBeforetask, displayedComponents:.hourAndMinute)
            
            Spacer()
            
            
            
          
           
            
        }
        
        
        
        
                        
                    
    }
}

struct chatNav_Previews: PreviewProvider {
    static var previews: some View {
        notificationNav()
    }
}
