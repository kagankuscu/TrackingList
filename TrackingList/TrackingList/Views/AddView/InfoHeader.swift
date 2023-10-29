//
//  InfoHeader.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct InfoHeader: View {
    @Binding var title: String
    @Binding var descriptions: String
    @Binding var image: String
    
    var body: some View {
        VStack {
            InfoView(value: $title, title: "Title")
            InfoView(value: $descriptions, title: "Description", limit: 1...10)
            // TODO: - This will change select image
            InfoView(value: $image, title: "Image")
        }
    }
}

#Preview {
    InfoHeader(title: .constant("Title"), descriptions: .constant("Descriptions"), image: .constant("Image"))
}
