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
        VStack{
            AsyncImage(url: URL(string: heroTestTitle)){ image in
                
                image
                    .resizable()
                    .scaledToFill()
//                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            
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
            
            // four tabs under buttons - tending movies, tv shows, 
        }
    }
}

#Preview {
    HomeView()
}
