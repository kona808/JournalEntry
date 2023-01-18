//
//  EntryListTableViewCell.swift
//  TravelDiary
//
//  Created by Jacob Perez on 1/17/23.
//

import UIKit

class EntryListTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    func configureCell(with entry: Entry) {
        titleLabel.text = entry.title
        addressLabel.text = entry.address
        dateLabel.text = entry.entryDate.stringValue()
    }
}
