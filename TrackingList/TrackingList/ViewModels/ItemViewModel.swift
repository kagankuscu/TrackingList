//
//  ItemViewModel.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import Foundation

class ItemViewModel: ObservableObject {
    @Published var books: [any Item] = []
    @Published var movies: [any Item] = []
    
    func addItem<T: Item>(for item: T) {
        if let book = item as? Book {
            if isEmptyField(for: book) {
                self.books.append(book)
            }
        } else if let movie = item as? Movie {
            if isEmptyField(for: movie) {
                self.movies.append(movie)
            }
        }
    }
    
    func getItems<T: Item>(type: T) {
        
    }
    
    func getItem<T: Item>(type: T) {
        
    }
    
    func getUpdate<T: Item>(type: T) {
        
    }
    
    func removeItem<T: Item>(_ itemIndex: IndexSet, type: T) {
        
    }
    
    private func isEmptyField<T: Item>(for item: T) -> Bool {
        guard item.title != "" else { return false}
        
        return true
    }
}
