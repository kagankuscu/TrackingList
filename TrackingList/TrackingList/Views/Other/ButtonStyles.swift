//
//  ButtonStyles.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 29.10.23.
//

import Foundation
import SwiftUI

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal)
            .padding(.vertical, 4)
            .background(configuration.isPressed ? Color.blue.opacity(0.5) : Color.blue)
            .clipShape(Capsule())
            .foregroundStyle(.white)
    }
}
