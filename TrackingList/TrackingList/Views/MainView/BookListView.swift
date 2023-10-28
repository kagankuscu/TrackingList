//
//  BookListView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 28.10.23.
//

import SwiftUI

struct BookListView: View {
    @State var books: [Book] = Book.MOCK_BOOKS
    
    var body: some View {
        List {
            Section {
                ForEach(books) { book in
                    NavigationLink(destination: Text("Book: \(book.title)")) {
                        RowView(item: book)
                    }
                }
            } header: {
                SectionHeader(title: "Books")
            }
        }
        .listStyle(.grouped)
    }
}

#Preview {
    NavigationStack {
        BookListView()
    }
}
