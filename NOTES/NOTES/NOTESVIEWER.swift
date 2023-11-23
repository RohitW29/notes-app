//
//  NOTESVIEWER.swift
//  NOTES
//
//  Created by Rohit Ashokrao Wadkar on 23/11/23.
//

import Foundation

// Define the Notes class
class Notes: Identifiable {
    let id = UUID()

    var name: String
    var text: String

    // Initializer to set the initial values
    init(name: String, text: String) {
        self.name = name
        self.text = text
    }
}
