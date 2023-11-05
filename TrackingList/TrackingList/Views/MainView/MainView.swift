//
//  ContentView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 28.10.23.
//

import SwiftUI

struct MainView: View {
    @StateObject private var itemViewModel = ItemViewModel()
    
    var body: some View {
        TabView {
            ItemListView(headerTitle: "Books", items: $itemViewModel.books)
                .tabItem { Label("Books", systemImage: "book") }
            
            ItemListView(headerTitle: "Movies", items: $itemViewModel.movies)
                .tabItem { Label("Movies", systemImage: "movieclapper") }
        }
        .environmentObject(itemViewModel)
    }
}

#Preview {
    MainView()
}
