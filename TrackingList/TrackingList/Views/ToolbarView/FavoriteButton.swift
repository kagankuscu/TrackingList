//
//  FavoriteButton.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct FavoriteButton: View {
    var action: () -> Void
    
    var title: String
    @Binding var isFavorite: Bool
    
    var onImage: String = "checkmark.circle.fill"
    var offImage: String = "checkmark.circle"
    
    var body: some View {
        Button {
            action()
        } label: {
            Label(title, systemImage: isFavorite ? onImage : offImage)
        }
    }
}

#Preview {
    VStack {
        FavoriteButton(action: {}, title: "Saved", isFavorite: .constant(false))
        FavoriteButton(action: {}, title: "Saved", isFavorite: .constant(true))
        FavoriteButton(action: {}, title: "Saved", isFavorite: .constant(true), onImage: "heart.fill", offImage: "heart")
        FavoriteButton(action: {}, title: "Saved", isFavorite: .constant(false), onImage: "heart.fill", offImage: "heart")
    }
}
