//
//  ProfileStruct.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/14/23.
//

import Foundation
import SwiftUI

struct Profile {
    var username: String
    static let `default` = Profile(username: "username", image: Image(systemName: "person.circle"))
    var image: Image
}
