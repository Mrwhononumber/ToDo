//
//  EmptyStateView.swift
//  ToDo
//
//  Created by Basem Elkady on 5/18/25.
//

import SwiftUI

struct EmptyStateView: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Are you a productive person? I think you should click the add button and add some items to your ToDo list!")
                
                NavigationLink {
                    AddView()
                } label: {
                    Text("Add Something 🥳")

                        .foregroundStyle(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? .pink : .red )
                        .clipShape(.rect(cornerRadius: 10))
                }
                .padding(.horizontal, animate ? 40 : 50)
                .shadow(color: animate ? .pink : .red,
                        radius: 30,
                        x: 0,
                        y: animate ? 50 : 30)
                .scaleEffect(animate ? 1.05 : 1)
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear { addAnimation()  }
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity )
    }
    
    func addAnimation() {
        guard !animate else { return  }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: DispatchWorkItem(block: {
            withAnimation(
                Animation
                    .easeInOut(duration: 2)
                    .repeatForever()
            ) {
                animate  = true
            }
        }))
    }
}

#Preview {
    
    NavigationView {
        EmptyStateView()
            .navigationTitle("Hello")
    }
}
