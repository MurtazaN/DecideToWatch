//
//  HomeView.swift
//  DecideToWatch
//
//  Created by Murtaza N on 4/17/26.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleURL
    
    var body: some View {
        // Vertical stack/view
        GeometryReader { geo in
            ScrollView {
                LazyVStack{
                    AsyncImage(url: URL(string: heroTestTitle)){ image in
                        
                        image
                            .resizable()
                        //  .scaledToFill()
                            .scaledToFit()
                            .overlay {
                                LinearGradient( // smooth transition using colors in a straight line
                                    stops: [Gradient.Stop(color: .clear, location: 0.8), //fades into clear
                                            Gradient.Stop(color: .gradients, location: 1.0)], //fade into custom gradients color (to make themes)
                                    startPoint: .top, // directio of gradient; starts at top of async image
                                    endPoint: .bottom) //stops at bottom of async image
                            }
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: geo.size.width, height: geo.size.height * 0.80) //makes frame the size of screen
                    
                    // horizontal stack/view
                    HStack{
                        Button {
                            
                        } label: {
                            Text(Constants.playString)
                                .ghostButtonStyle()
                        }
                        
                        Button {
                            
                        } label: {
                            Text(Constants.downloadString)
                                .ghostButtonStyle()
                        }
                    }
                    
                    // four tabs under buttons - trending movies, tv shows, top rated movies, top tv shows
                    HorizontalListView(header: Constants.trendingMoviesString)
                    HorizontalListView(header: Constants.topRatedMoviesString)
                    HorizontalListView(header: Constants.upcomingMoviesString) //
                    HorizontalListView(header: Constants.trendingTVString)
                    HorizontalListView(header: Constants.topRatedTVString)
                    HorizontalListView(header: Constants.upcomingTVString) //
                    
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
