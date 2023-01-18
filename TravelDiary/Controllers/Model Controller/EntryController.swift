//
//  EntryController.swift
//  TravelDiary
//
//  Created by Jacob Perez on 1/17/23.
//

import Foundation

class EntryController {
    
    static let shared = EntryController()
    
    var entries: [Entry] = []
    
    func createEntry(with title: String, address: String, body: String) {
        let entry = Entry(title: title, address: address, body: body)
        entries.append(entry)
    }
    func deleteEntry(entryToDelete: Entry) {
        guard let indexOfEntryToDelete = entries.firstIndex(of: entryToDelete) else { return }
        entries.remove(at: indexOfEntryToDelete)
    }
    func updateEntry(entryToUpdate: Entry, newTitle: String, newBody: String, newAddress: String) {
        entryToUpdate.title = newTitle
        entryToUpdate.address = newAddress
        entryToUpdate.body = newBody
    }
}

