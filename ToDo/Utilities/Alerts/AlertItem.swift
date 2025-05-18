//
//  AlertItem.swift
//  ToDo
//
//  Created by Basem Elkady on 5/18/25.
//

import SwiftUI


struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}
