//
//  AddViewToolbarButton.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct AddViewToolbarButton: View {
    @Binding var isFavorite: Bool
    @Binding var isDone: Bool
    
    var body: some View {
        HStack {
            FavoriteButton(action: {
                self.isFavorite.toggle()
            }, title: "Favorite", isFavorite: $isFavorite)
            FavoriteButton(action: {
                self.isDone.toggle()
            }, title: "Read", isFavorite: $isDone, onImage: "heart.fill", offImage: "heart")
        }
    }
}

#Preview {
    AddViewToolbarButton(isFavorite: .constant(true), isDone: .constant(false))
}
