//
//  Constants.swift
//  DecideToWatch
//
//  Created by Bridge Informatics on 4/17/26.
//

import Foundation
import SwiftUI

struct Constants {
    
    //Static variables for the tab bar
    static let homeString = "Home"
    static let upcomingString = "Upcoming"
    static let searchString = "Search"
    static let downloadString = "Download"

    //variables for icons for the tab bar
    static let homeIcon = "house"
    static let upcomingIcon = "play.circle"
    static let searchIcon = "magnifyingglass"
    static let downloadIcon = "arrow.down.to.line" // also in home view
    
    //Home View
    static let testTitleURL = "https://media.themoviedb.org/t/p/w300_and_h450_face/kvFSpESyBZMjaeOJDx7RS3P1jey.jpg"
    static let playString = "Play"
    static let testTitleURL = "https://media.themoviedb.org/t/p/w300_and_h450_face/kvFSpESyBZMjaeOJDx7RS3P1jey.jpg"

}


extension Text {
    func ghostButtonStyle() -> some View {
        self
            .frame(width: 100, height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(lineWidth: 5)
            }
    }
}
