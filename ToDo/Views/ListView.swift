//
//  ListView.swift
//  ToDo
//
//  Created by Basem Elkady on 5/17/25.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        
  
     
        List{
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
            }
            . onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        
        .listStyle(.plain)
        .navigationTitle("Todo List")
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
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
   .environmentObject(ListViewModel())
}


