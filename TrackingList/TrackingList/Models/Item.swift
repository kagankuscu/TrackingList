//
//  Item.swift
//  TrackingList
//
//  Created by Kagan Kuscu on 28.10.23.
//

import Foundation

protocol Item: Codable, Identifiable {
    var image: String { get set}
    var title: String { get set}
    var descriptions: String { get set}
    var isFavorite: Bool { get set}
    var isDone: Bool { get set}
}
