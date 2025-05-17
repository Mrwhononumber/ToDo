//
//  ListRowView.swift
//  ToDo
//
//  Created by Basem Elkady on 5/17/25.
//

import SwiftUI

struct ListRowView: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
            
        }
    }
}


#Preview {
    ListRowView (title: "First title")
}
