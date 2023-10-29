//
//  MovieListView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 28.10.23.
//

import SwiftUI

struct MovieListView: View {
    @State var movies: [Movie] = Movie.MOCK_MOVIES
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(movies) { movie in
                        NavigationLink(destination: Text("Movie: \(movie.title)")) {
                            RowView(item: movie)
                        }
                    }
                } header: {
                    SectionHeader(title: "Movies")
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Tracking List")
            .toolbar {
                AddButton(destination: AddAndEditMovieView(), labelTitle: "Add Movie")
            }
        }
    }
}

#Preview {
    NavigationStack {
        MovieListView()
    }
}
