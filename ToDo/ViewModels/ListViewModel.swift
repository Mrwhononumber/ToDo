//
//  ListViewModel.swift
//  ToDo
//
//  Created by Basem Elkady on 5/18/25.
//

import Foundation

class ListViewModel: ObservableObject {
     
    @Published var items: [Item] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            Item(title: "first one is here", isCompleted: true),
            Item(title: "second one is here", isCompleted: false),
            Item(title: "thirds one is here", isCompleted: true)
        ]
        items.append(contentsOf: newItems)
    }
    
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    
    func moveItem(From firstPosition: IndexSet, lastPosition: Int) {
        items.move(fromOffsets: firstPosition, toOffset: lastPosition)
    }
    
    func addItem(title: String) {
        let newItem = Item(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: Item) {
        guard let index = items.firstIndex(where: {$0.id == item.id }) else { return } /// Get the index of the selected item at the items array
        items[index] = item.updateCompletionStatus()                                  /// Update the selected item's isCompleted status
    }
}
 
