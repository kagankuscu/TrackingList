//
//  Book.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 28.10.23.
//

import Foundation

struct Book: Item {
    var image: String
    
    var title: String
    
    var descriptions: String
    
    var isFavorite: Bool
    
    var isDone: Bool
    
    var id = UUID()
    
    var author: String
}

extension Book {
    static let MOCK_BOOK = Book(image: "Image", title: "Title", descriptions: "Description", isFavorite: false, isDone: false, author: "Author")
    static let MOCK_BOOKS = [
        Book(image: "Image", title: "Title", descriptions: "Description", isFavorite: false, isDone: false, author: "Author"),
        Book(image: "Image", title: "Title", descriptions: "Description", isFavorite: false, isDone: true, author: "Author"),
        Book(image: "Image", title: "Title", descriptions: "Description", isFavorite: true, isDone: false, author: "Author"),
        Book(image: "Image", title: "Title", descriptions: "Description", isFavorite: true, isDone: true, author: "Author")
    ]
}
