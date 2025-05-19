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
    @State var isShowingAlert: Bool = false
    
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
                                   .frame(height: 55)
                                   .frame(maxWidth:.infinity)
                                   .foregroundStyle(.white)
                                   .background(.red)
                                   .clipShape(.rect(cornerRadius: 10))
                                   .padding()
                }
            }
            .padding()
        }
        .navigationTitle("Add Item")
        .alert(isPresented: $isShowingAlert) {
            Alert(title: AlertContext.invalidText.title,
                  message: AlertContext.invalidText.message,
                  dismissButton: AlertContext.invalidText.dismissButton)
        }
    }

    
    func saveItem() {
        if isValidText(textFieldText) {
            listViewModel.addItem(title: textFieldText)
            dismiss()
        }
      
    }
    
    func isValidText(_ text: String) -> Bool {
        if textFieldText.count < 3 {
             isShowingAlert = true
            return false
        }
        return true
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    .environmentObject(ListViewModel() )
}
