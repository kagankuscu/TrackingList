//
//  AddAndEditView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct AddAndEditBookView: View {
    @Environment(\.dismiss) var dismiss
    var book: Book? = nil
    
    @State private var image = ""
    @State private var title: String = ""
    @State private var descriptions = ""
    @State private var isFavorite = false
    @State private var isDone = false
    
    @State private var author: String = ""
    
    @FocusState private var focusState: FocusField?
    
    @EnvironmentObject private var itemViewModel: ItemViewModel
    
    var body: some View {
        VStack {
            Form {
                Section {
                    InfoHeader(title: $title, descriptions: $descriptions, image: $image)
                        .focused($focusState, equals: .title)
                    
                    InfoView(value: $author, title: "Author")
                        .focused($focusState, equals: .title)
                }
            }
            ActionButton(item: self.book, action: {
                let book = Book(image: image,
                                title: title,
                                descriptions: descriptions,
                                isFavorite: isFavorite,
                                isDone: isDone,
                                author: author)
                
                itemViewModel.addItem(for: book)
                
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
        if let book = book {
            self.image = book.image
            self.title = book.title
            self.descriptions = book.descriptions
            self.isFavorite = book.isFavorite
            self.isDone = book.isDone
            self.author = book.author
        }
    }
}

#Preview("Light Theme") {
    NavigationStack {
        AddAndEditBookView()
    }
}

#Preview("Dark Theme") {
    NavigationStack {
        AddAndEditBookView()
            .preferredColorScheme(.dark)
    }
}
