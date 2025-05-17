//
//  ListView.swift
//  ToDo
//
//  Created by Basem Elkady on 5/17/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        @State var items: [Item] = [
            Item(title: "first one is here", isCompleted: true),
            Item(title: "second one is here", isCompleted: false),
            Item(title: "thirds one is here", isCompleted: true)
        ]
     
        List{
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        
        .listStyle(.plain)
        .navigationTitle("Todo List")
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                Button("Edit") {
                   print("Edit pressed")
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
            }
        }
    }
}

#Preview {
   NavigationView {
        ListView()
    }
    
}


