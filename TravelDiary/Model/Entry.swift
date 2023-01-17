//
//  Entry.swift
//  TravelDiary
//
//  Created by Jacob Perez on 1/17/23.
//

import Foundation

class Entry {
    
    let title: String
    let entryDate: Date
    let address: String
    
    init(title: String, entryDate: Date = Date(), address: String) {
        self.title = title
        self.entryDate = entryDate
        self.address = address
    }
}
