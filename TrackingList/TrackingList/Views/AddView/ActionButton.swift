//
//  ActionButton.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import SwiftUI

struct ActionButton<TargetItem: Item>: View {
    var item: TargetItem? = nil
    var action: () -> Void
    
    var body: some View {
        Button(self.item == nil ? "Saved" : "Update") {
            action()
        }
        .buttonStyle(BlueButton())
        .padding()
    }
}
