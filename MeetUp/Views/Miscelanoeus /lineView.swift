//
//  lineView.swift
//  MeetUp
//
//  Created by Jash Jobalia on 4/19/23.
//

import SwiftUI

struct lineView: View {
    let height: CGFloat = 1
    let color: Color = .black
    let opacity: Double = 0.2
    var body: some View {
        Group {
                    Rectangle()
                }
                .frame(height: height)
                .foregroundColor(color)
                .opacity(opacity)
    }
}

struct lineView_Previews: PreviewProvider {
    static var previews: some View {
        lineView()
    }
}
