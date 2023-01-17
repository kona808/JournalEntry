//
//  EntryDetailViewController.swift
//  TravelDiary
//
//  Created by Jacob Perez on 1/17/23.
//

import UIKit

class EntryDetailViewController: UIViewController {
    
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    
    
    // What do I need to do first?
    // create a way for the controller to recieve data from the Model to update the UI
    var entryReciever: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func saveButton(_ sender: Any) {
        // What data do I want to save?
        // How to guarentee there is data and not nil?
       guard let title = titleTextField.text,
        let address = addressTextField.text,
        let date = dateLabel.text,
                let body = textView.text else { return }
        // if there is data, update and save the data
                if let entry = entryReciever {
                    EntryController.shared.updateEntry(entryToUpdate: entryReciever, newTitle: title, newBody: body, newAddress: address)
                } else {
                EntryController.shared.createEntry(with: title, address: address, body: body)
                // if there is no data, create a new saved entry
        
        }
    }
    
    func updateUI() {
        textView.text = entryReciever?.body
        dateLabel.text = "\(entryReciever?.entryDate)"
        addressTextField.text = entryReciever?.address
        titleTextField.text = entryReciever?.title
        
    }
    
}
