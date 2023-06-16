//
//  ChatView.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/12/23.
//

import SwiftUI

struct ChatView: View {
    @State private var username: String = ""
    var body: some View {
        TextField("Username", text: $username)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
