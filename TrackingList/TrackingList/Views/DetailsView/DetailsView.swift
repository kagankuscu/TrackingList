//
//  DetailsView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct DetailsView: View {
    let item: any Item
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(item.image)
                .resizable()
                .frame(height: 250)
            ScrollView {
                VStack(alignment: .leading) {
                    Text(item.title)
                        .bold()
                        .font(.title)
                    HStack {
                        selectedItem()
                        Spacer()
                        FavoriteView(value: item.isFavorite)
                    }
                    DoneStatus(isDone: item.isDone)
                    Text(item.descriptions)
                }
            }
            .scrollIndicators(.hidden)
        }
        .padding(.horizontal, 12)
        .toolbar {
            // TODO: - AddAndEditBookView will refactor dynamic
            AddButton(destination: AddAndEditBookView(book: item as? Book), labelTitle: "Edit", icon: "edit")
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(item.title)
    }
    
    private func selectedItem() -> Text {
        var text: Text = Text("")
        
        if let book = item as? Book {
            text = Text(book.author)
                .fontWeight(.semibold)
        } else if let movie = item as? Movie {
            text = Text(movie.title)
                .fontWeight(.semibold)
        }
        
        return text
    }
}

#Preview {
    NavigationStack {
        DetailsView(item: Book.MOCK_BOOKS[3])
    }
}

#Preview("Dark Book") {
    NavigationStack {
        DetailsView(item: Book.MOCK_BOOKS[3])
    }
    .preferredColorScheme(.dark)
}

#Preview("Dark Movie") {
    NavigationStack {
        DetailsView(item: Movie.MOCK_MOVIE)
    }
    .preferredColorScheme(.dark)
}
