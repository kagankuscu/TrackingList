//
//  DoneStatus.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct DoneStatus: View {
    let size: CGFloat = 15
    let isDone: Bool
    
    var onMessage: String = "Done"
    var offMessage: String = "Not Done"
    
    var body: some View {
        HStack(alignment: .center) {
            Text(isDone ? onMessage : offMessage)
                .font(.caption)
            Spacer()
            Image(systemName: isDone ? "checkmark.square" : "square")
                .resizable()
                .frame(width: size, height: size)
        }
        .frame(maxWidth: 100)
        .foregroundStyle(.gray)
    }
}

#Preview {
    VStack(alignment: .leading) {
        DoneStatus(isDone: false)
        DoneStatus(isDone: true)
        DoneStatus(isDone: false, onMessage: "Custom On Message", offMessage: "Custom Off Message")
        DoneStatus(isDone: true, onMessage: "Custom On Message", offMessage: "Custom Off Message")
    }
}
