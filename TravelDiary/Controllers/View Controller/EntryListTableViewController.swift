//
//  EntryListTableViewController.swift
//  TravelDiary
//
//  Created by Jacob Perez on 1/17/23.
//

import UIKit

class EntryListTableViewController: UITableViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return EntryController.shared.entries.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath) as? EntryListTableViewCell else { return UITableViewCell() }
        let entry = EntryController.shared.entries[indexPath.row]
        // Configure the cell...
        cell.configureCell(with: entry)
        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            // Find the object in the array of that indexpath
            let entry = EntryController.shared.entries[indexPath.row]
            EntryController.shared.deleteEntry(entryToDelete: entry)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            if let index = tableView.indexPathForSelectedRow {
                if let destination = segue.destination as? EntryDetailViewController {
                    let entryToSend = EntryController.shared.entries[index.row]
                    destination.entryReciever = entryToSend
                }
            }
        }
    }
    

}
