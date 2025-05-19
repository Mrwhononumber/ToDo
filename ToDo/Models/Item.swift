//
//  Item.swift
//  ToDo
//
//  Created by Basem Elkady o n 5/18/25.
//

import Foundation

struct Item: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString  , title: String, isCompleted: Bool) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletionStatus() -> Item {
        return Item(id: id, title: title, isCompleted: !isCompleted)
    }
}


struct MockItem {
    static let sampleItem = Item(title: "this is a sample item", isCompleted: true)
}
