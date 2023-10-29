//
//  ContentView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 28.10.23.
//

import SwiftUI

struct MainView: View {
    @State var books: [any Item] = []
    @State var movies: [any Item] = []
    
    var body: some View {
        TabView {
            ItemListView(headerTitle: "Books", items: $books)
                .tabItem { Label("Books", systemImage: "book") }
            
            ItemListView(headerTitle: "Movies", items: $movies)
                .tabItem { Label("Movies", systemImage: "movieclapper") }
        }
    }
}

#Preview {
    MainView()
}

#Preview {
    MainView(books: Book.MOCK_BOOKS, movies: Movie.MOCK_MOVIES)
}
