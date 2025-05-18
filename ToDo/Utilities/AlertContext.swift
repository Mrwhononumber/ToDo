//
//  AlertContext.swift
//  ToDo
//
//  Created by Basem Elkady on 5/18/25.
//

import SwiftUI

struct AlertContext {
    static let invalidText = AlertItem(title: Text("Can't save this note!"),
                                       message: Text("please write at least 3 characters"),
                                       dismissButton: .default(Text("OK")))
    }

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}
