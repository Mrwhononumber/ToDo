//
//  Item.swift
//  ToDo
//
//  Created by Basem Elkady o n 5/18/25.
//

import Foundation

struct Item: Identifiable {
    let id: String = UUID().uuidString 
    let title: String
    let isCompleted: Bool
}

struct MockItem {
    static let sampleItem = Item(title: "this is a sample item", isCompleted: true)
}
