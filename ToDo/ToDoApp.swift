//
//  ToDoApp.swift
//  ToDo
//
//  Created by Basem Elkady on 5/17/25.
//

import SwiftUI

@main
struct ToDoApp: App {
    
    @StateObject var listViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .tint(.red)
            .environmentObject(listViewModel)
        }
    }
}
