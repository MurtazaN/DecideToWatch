//
//  HorizontalListView.swift
//  DecideToWatch
//
//  Created by Murtaza N on 4/21/26.
//

import SwiftUI

struct HorizontalListView: View {
    let header = Constants.trendingMoviesString
    var titles = [Constants.testTitleURL, Constants.testTitleURL2, Constants.testTitleURL3 ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(header)
                .font(.title)
            
            ScrollView() {
                
            }
        }
    }
}

#Preview {
    HorizontalListView()
}
