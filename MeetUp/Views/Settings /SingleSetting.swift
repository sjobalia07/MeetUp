//
//  SingleSetting.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/13/23.
//

import Foundation
import SwiftUI
struct SingleSetting: Identifiable{
    var id: Int
    
    var name: String
    var imageName: String
    var image: Image {
        Image(systemName: imageName)
        }
    
    var colour: Color
    var destination: AnyView
    
    }




