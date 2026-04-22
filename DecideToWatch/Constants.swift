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
    static let playString = "Play"

    //variables for icons for the tab bar
    static let homeIcon = "house"
    static let upcomingIcon = "play.circle"
    static let searchIcon = "magnifyingglass"
    static let downloadIcon = "arrow.down.to.line" // also in home view
    
    //Home View
    static let testTitleURL = "https://media.themoviedb.org/t/p/w300_and_h450_face/kvFSpESyBZMjaeOJDx7RS3P1jey.jpg" //the pitt
    
    //Horizontal List View
    static let trendingMoviesString = "Trending Movies"
    static let upcomingMoviesString = "Upcoming Movies"
    static let topRatedMoviesString = "Top Rated Movies"
    static let trendingTVString = "Trending TV"
    static let upcomingTVString = "Upcoming TV"
    static let topRatedTVString = "Top Rated TV"
    
    static let testTitleURL2 = "https://media.themoviedb.org/t/p/w600_and_h900_face/3Qud19bBUrrJAzy0Ilm8gRJlJXP.jpg" //Michael
    static let testTitleURL3 = "https://media.themoviedb.org/t/p/w600_and_h900_face/ygWXPL0RS91JyJPNOfK34eV3bRE.jpg" //vengance
    static let testTitleURL4 = "https://media.themoviedb.org/t/p/w440_and_h660_face/tVvpFIoteRHNnoZMhdnwIVwJpCA.jpg" //crime101


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
