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
    
    static let failedToSave = AlertItem(title: Text("Save Error"),
                                        message: Text("There was a problem saving your items."),
                                        dismissButton: .default(Text("OK"))
    )

    static let failedToLoad = AlertItem(title: Text("Load Error"),
                                        message: Text("There was a problem loading your items."),
                                        dismissButton: .default(Text("OK"))
    )

    }

