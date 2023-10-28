//
//  Movie.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 28.10.23.
//

import Foundation

struct Movie: Item {
    var image: String
    
    var title: String
    
    var descriptions: String
    
    var isFavorite: Bool
    
    var isDone: Bool
    
    var id = UUID()
}


extension Movie {
    static let MOCK_MOVIE = Movie(image: "Image", title: "Title", descriptions: "Description", isFavorite: false, isDone: false)
    static let MOCK_MOVIES = [
        Movie(image: "Image", title: "Title", descriptions: "Description", isFavorite: false, isDone: false),
        Movie(image: "Image", title: "Title", descriptions: "Description", isFavorite: false, isDone: true),
        Movie(image: "Image", title: "Title", descriptions: "Description", isFavorite: true, isDone: false),
        Movie(image: "Image", title: "Title", descriptions: "Description", isFavorite: true, isDone: true)
    ]
}
