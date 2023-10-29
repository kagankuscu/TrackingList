//
//  AddButton.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct AddButton<TargetView: View>: View {
    
    var destination: TargetView
    var labelTitle: String
    var icon: String = "plus"
    
    var body: some View {
        
        NavigationLink(destination: destination) {
            Label(labelTitle, systemImage: icon)
        }
    }
}

#Preview {
    NavigationStack {
        AddButton(destination: AddAndEditBookView(), labelTitle: "Book")
        AddButton(destination: AddAndEditMovieView(), labelTitle: "Movie")
    }
}
