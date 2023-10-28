//
//  RowView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 28.10.23.
//

import SwiftUI

struct RowView: View {
    var item: any Item
    
    let likeImage = "heart.fill"
    let notLikeImage = "heart"
    
    let imageWidth: Double = 80
    let imageHeight: Double = 80
    
    var body: some View {
        HStack(alignment: .top) {
            Image(item.image)
                .resizable()
                .frame(width: imageWidth, height: imageHeight)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(alignment: .bottomTrailing) {
                    Image(systemName: isDone() ? "checkmark.circle.fill" : "xmark.circle.fill")
                        .background(backgroundImage)
                        .offset(x: 10, y: 10)
                        .foregroundStyle(isDone() ? .green : .red)
                }
            VStack(alignment: .leading) {
                Text(item.title)
                    .bold()
                    .font(.title2)
                Text(item.descriptions)
                    .font(.body)
                    .lineLimit(2)
            }
            .padding(.leading, 4)
            Spacer()
            favoriteItem
        }
        .padding(.vertical, 8)
    }
    
    private func isDone() -> Bool {
        item.isDone
    }
    
    private func isFavorite() -> Bool {
        item.isFavorite
    }
    
    private var favoriteItem: some View {
        if isFavorite() {
            return Image(systemName: likeImage)
        } else {
            return Image(systemName: notLikeImage)
        }
    }
    
    private var backgroundImage: some View {
        Circle()
            .foregroundStyle(.black)
    }
}

#Preview {
    VStack(spacing: 50) {
        RowView(item:  Book.MOCK_BOOK)
        RowView(item:  Book(image: "Image", title: "Title", descriptions: "Description", isFavorite: false, isDone: true, author: "Author"))
        RowView(item:  Book(image: "Image", title: "Title", descriptions: "Description", isFavorite: true, isDone: true, author: "Author"))
        RowView(item:  Movie(image: "Image", title: "Title", descriptions: "Description", isFavorite: true, isDone: false))
    }
}
