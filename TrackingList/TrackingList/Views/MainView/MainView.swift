//
//  ContentView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 28.10.23.
//

import SwiftUI

struct MainView: View {
    @State var books: [Book] = Book.MOCK_BOOKS
    @State var movies: [Movie] = Movie.MOCK_MOVIES
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(books) { book in
                        NavigationLink(destination: Text("Book \(book.author)")) {
                            RowView(item:  book)
                        }
                    }
                } header: {
                    SectionHeader(title: "Books")
                }
                
                .alignmentGuide(.listRowSeparatorLeading) { _ in 0 }
                Section {
                    ForEach(movies) { movie in
                        NavigationLink(destination: Text("Movie: \(movie.title)")) {
                            RowView(item: movie)
                        }
                    }
                } header: {
                    SectionHeader(title: "Movies")
                }
                .alignmentGuide(.listRowSeparatorLeading) { _ in 0 }
            }
            .listStyle(.grouped)
            .navigationTitle("Tracking List")
            .toolbar {
                ToolbarItem {
                    NavigationLink(destination: Text("Toolbar add new item")) {
                        Label("Add", systemImage: "plus")
                    }
                }
            }
        }
    }
}

struct SectionHeader: View {
    let title: String
    
    var body: some View {
        Text(title)
            .foregroundStyle(Color("SectionColor"))
            .font(.title2)
            .fontWeight(.semibold)
    }
}

#Preview {
    MainView()
}
