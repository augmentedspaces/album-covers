//
//  ContentView.swift
//  AlbumCovers
//
//  Created by Nien Lam on 9/15/21.
//  Copyright © 2021 Line Break, LLC. All rights reserved.
//

import SwiftUI


class ViewModel: ObservableObject {
    // Intialize with placeholder information.
    @Published var coverImage: String    = "abbey-road.jpg"
    @Published var albumName: String     = "Abbey Road"
    @Published var artist: String        = "Beatles"
    @Published var currentTrack: String  = "1. Come Together"

    // Indices for current album and track to display.
    var albumIdx: Int = 0
    var trackIdx: Int = 0


    // TODO: Create a stucture for holding album data.
    // coverImage, albumName, artist, tracks

    
    
    // TODO: Create an empty array to store multiple albums.



    init() {
        // TODO: Initialize 3 or more albums with data.

        
        
        // TODO: Append albums to array.

        
        
        // TODO: Intialize screen variables with first album.
        // coverImage, albumName, artist, currentTrack



    }


    // TODO: Update variables: albumIdx, trackIdx, coverImage, albumName, artist, currentTrack
    func nextAlbumButtonPressed() {
        print("🔺 Did press Next Album")

    }

    // TODO: Update variables: trackIdx and currentTrack
    func nextTrackButtonPressed() {
        print("🔺 Did press Next Track")

    }
}


struct ContentView: View {
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        VStack {
            Image(uiImage: UIImage(named: viewModel.coverImage)!)
                .resizable()
                .frame(width: 300, height: 300)
                .padding(.bottom, 10)
            
            Text(viewModel.albumName)
                .font(.system(.title))
            
            Text(viewModel.artist)
                .font(.system(.title2))
                .padding(.bottom, 10)

            Text(viewModel.currentTrack)
                .font(.system(.subheadline))
                .padding(.bottom, 30)
            
            Button {
                viewModel.nextAlbumButtonPressed()
            } label: {
                actionLabel(text: "Next Album", color: .green)
            }
            .padding(.bottom, 15)

            Button {
                viewModel.nextTrackButtonPressed()
            } label: {
                actionLabel(text: "Next Track", color: .orange)
            }
        }
    }

    // Helper method for rendering button label.
    func actionLabel(text: String, color: Color) -> some View {
        Label(text, systemImage: "chevron.forward.square")
            .font(.system(.body))
            .foregroundColor(.white)
            .frame(width: 200, height: 44)
            .background(color)
            .cornerRadius(4)
    }
}
