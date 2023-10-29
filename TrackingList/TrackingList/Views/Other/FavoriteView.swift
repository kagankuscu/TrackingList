//
//  FavoriteView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct FavoriteView: View {
    let value: Bool
    
    var imageOn = "heart.fill"
    var imageOff = "heart"
    
    var body: some View {
        VStack {
            isFavorite
        }
    }
    
    private var isFavorite: Image {
        if value {
            Image(systemName: imageOn)
        } else {
            Image(systemName: imageOff)
        }
    }
}

#Preview {
    VStack(spacing: 50) {
        FavoriteView(value: true)
        FavoriteView(value: false)
        FavoriteView(value: true, imageOn: "star.fill", imageOff: "star")
        FavoriteView(value: false, imageOn: "star.fill", imageOff: "star")
    }
}
