//
//  AddView.swift
//  ToDo
//
//  Created by Basem Elkady on 5/17/25.
//

import SwiftUI

struct AddView: View {
    
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    @Environment(\.dismiss) private var dismiss
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Add something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray5))
                    .clipShape(.rect(cornerRadius: 10, style: .circular))
                
                Button {
                    saveItem()
                } label: {
                    Text("Save ")
                        .font(.title3)
                                   .fontWeight(.semibold)
                                   .frame(width: 260, height: 50)
                                   .foregroundStyle(.white)
                                   .background(Color.accentColor)
                                   .clipShape(.rect(cornerRadius: 10))
                }
            }
            .padding()
        }
        .navigationTitle("Add Item")
    }
    
    func saveItem() {
        listViewModel.addItem(title: textFieldText)
        dismiss()
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    .environmentObject(ListViewModel() )
}
