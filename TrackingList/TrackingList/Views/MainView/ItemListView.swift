//
//  ItemListView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct ItemListView: View {
    let headerTitle: String
    @Binding var items: [any Item]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    if let books = items as? [Book] {
                        ForEach(books) { item in
                            NavigationLink(destination: Text("Book")) {
                                RowView(item: item)
                            }
                        }
                    } else if let movies = items as? [Movie] {
                        ForEach(movies) { item in
                            NavigationLink(destination: Text("Movie")) {
                                RowView(item: item)
                            }
                        }
                    }
                } header: {
                    SectionHeader(title: headerTitle)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Tracking List")
            .toolbar {
                if let _ = items as? [Book] {
                    AddButton(destination: AddAndEditBookView(), labelTitle: "Add Books")
                } else if let _ = items as? [Movie] {
                    AddButton(destination: AddAndEditMovieView(), labelTitle: "Add Movie")
                }
            }
        }
    }
}

#Preview {
    ItemListView(headerTitle: "Movies", items: .constant(Movie.MOCK_MOVIES))
}

#Preview {
    ItemListView(headerTitle: "Books", items: .constant(Book.MOCK_BOOKS))
}
