//
//  SectionHeader.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct SectionHeader: View {
    let title: String
    
    var body: some View {
        Text(title)
            .foregroundStyle(Color("SectionColor"))
            .font(.title2)
            .fontWeight(.semibold)
    }
}

#Preview {
    SectionHeader(title: "Section Header")
}
