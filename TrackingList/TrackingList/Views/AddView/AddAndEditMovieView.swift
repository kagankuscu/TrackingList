//
//  AddAndEditMovieView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct AddAndEditMovieView: View {
    var movie: Movie? = nil
    
    @State private var image = ""
    @State private var title: String = ""
    @State private var descriptions = ""
    @State private var isFavorite = false
    @State private var isDone = false
    
    @State private var director: String = ""
    
    @FocusState private var focusState: FocusField?
    
    var body: some View {
        VStack {
            Form {
                Section {
                    InfoHeader(title: $title, descriptions: $descriptions, image: $image)
                        .focused($focusState, equals: .title)
                }
            }
            ActionButton(item: self.movie, action: {
                print("Movie: \(self.director)")
                focusState = nil
            })
        }
        .textFieldStyle(.roundedBorder)
        .toolbar {
            AddViewToolbarButton(isFavorite: $isFavorite, isDone: $isDone)
        }
        .onAppear {
            isEditMode()
        }
    }
    
    private func isEditMode() {
        if let movie = movie {
            self.image = movie.image
            self.title = movie.title
            self.descriptions = movie.descriptions
            self.isFavorite = movie.isFavorite
            self.isDone = movie.isDone
            
            //            self.director = movie.director
        }
    }
}

#Preview {
    NavigationStack {
        AddAndEditMovieView()
    }
}
