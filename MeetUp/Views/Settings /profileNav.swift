//
//  profileNav.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/19/23.
//

import SwiftUI

struct profileNav: View {
    @State private var username: String = ""
    @State private var number: String = ""
    var body: some View {
        
        VStack() {
            Divider()
            HStack {
                        Image("Jash")
                            .resizable()
                            .frame(width: 50, height: 50)
                        TextField("Username", text: $username)

                        Spacer()
            }
            Divider()
            TextField("Number", text: $number)
            Spacer()
        }
    }
}

struct profileNav_Previews: PreviewProvider {
    static var previews: some View {
        profileNav()
    }
}
