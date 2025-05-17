//
//  ListView.swift
//  ToDo
//
//  Created by Basem Elkady on 5/17/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        @State var item = ["first item", "second item", "Third"]
     
        List{
            ForEach(item, id: \.self) { item in
                ListRowView(title: item)
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
                    Text("Destionation")
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


