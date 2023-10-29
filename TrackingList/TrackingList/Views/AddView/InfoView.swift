//
//  InfoView.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct InfoView: View {
    @Binding var value: String
    let title: String
    var limit: ClosedRange<Int> = 0...1
    var axis: Axis = .vertical
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .bold()
            TextField(title, text: $value, axis: axis)
                .lineLimit(limit)
        }
    }
}
