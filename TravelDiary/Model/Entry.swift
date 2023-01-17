//
//  Entry.swift
//  TravelDiary
//
//  Created by Jacob Perez on 1/17/23.
//

import Foundation

class Entry {
    
    var title: String
    var entryDate: Date
    var address: String
    var body: String
    
    init(title: String, entryDate: Date = Date(), address: String, body: String) {
        self.title = title
        self.entryDate = entryDate
        self.address = address
        self.body = body
    }
}
extension Entry: Equatable {
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        return lhs.title == rhs.title &&
        lhs.body == rhs.body &&
        lhs.address == rhs.address &&
        lhs.entryDate == rhs.entryDate
    }
    
}
