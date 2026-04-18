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
                        .frame(width: 100, height: 50)
                        .foregroundStyle(.buttonText)
                        .bold()
                        .background {
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .stroke(lineWidth: 5)
                        }
                }
                
                Button {
                    
                } label: {
                    Text(Constants.downloadString)
                        .frame(width: 100, height: 50)
                        .foregroundStyle(.buttonText)
                        .bold()
                        .background {
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .stroke(lineWidth: 5)
                        }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
