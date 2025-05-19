//
//  ListViewModel.swift
//  ToDo
//
//  Created by Basem Elkady on 5/18/25.
//

import Foundation

final  class ListViewModel: ObservableObject {
    
    @Published var alertItem: AlertItem?
    @Published var items: [Item] = [] { didSet { saveItem() } }
   
    let itemsKey = "itemList"
    
    init() { loadItems() }
    
    
    func loadItems() {
        
        guard let savedData = UserDefaults.standard.data(forKey: itemsKey) else { return }
              do {
                  let savedItems = try JSONDecoder().decode([Item].self, from: savedData)
                  self.items = savedItems
              } catch {
                  alertItem = AlertContext.failedToLoad
                  return
              }
    }
    
    
    func saveItem() {
        do {
            let encodedData = try JSONEncoder().encode(items)
               UserDefaults.standard.set(encodedData, forKey: itemsKey)
        } catch {
            alertItem = AlertContext.failedToSave
            return
        }
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
 
