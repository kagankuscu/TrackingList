//
//  ContentView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 28.10.23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            BookListView()
                .tabItem { Label("Books", systemImage: "book") }
            
            MovieListView()
                .tabItem { Label("Movies", systemImage: "movieclapper") }
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
