//
//  ContentView.swift
//  DecideToWatch
//
//  Created by Bridge Informatics on 4/17/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab(Constants.homeString, systemImage: Constants.homeIcon){
                Text(Constants.homeString)
            }
            Tab(Constants.upcomingString, systemImage: Constants.upcomingIcon){
                Text(Constants.upcomingString)
            }
            Tab(Constants.downloadString, systemImage: Constants.downloadIcon){
                Text(Constants.downloadString)
            }
            Tab(Constants.searchString, systemImage: Constants.searchIcon){
                Text(Constants.searchString)
            }
        }
    }
}

#Preview {
    ContentView()
}
