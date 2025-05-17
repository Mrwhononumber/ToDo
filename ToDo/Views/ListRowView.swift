//
//  ListRowView.swift
//  ToDo
//
//  Created by Basem Elkady on 5/17/25.
//

import SwiftUI

struct ListRowView: View {
 
    let item: Item
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted  ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
            
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}


#Preview {
    ListRowView (item:MockItem.sampleItem )
}
