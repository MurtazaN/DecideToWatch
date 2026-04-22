//
//  HomeView.swift
//  DecideToWatch
//
//  Created by Bridge Informatics on 4/17/26.
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
                    HorizontalListView(header: Constants.trendingTVString)
                    HorizontalListView(header: Constants.topRatedTVString)
                    
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
