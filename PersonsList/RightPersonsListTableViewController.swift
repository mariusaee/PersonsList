//
//  RightTableViewController.swift
//  PersonsList
//
//  Created by Marius Malyshev on 17.02.2021.
//

import UIKit

class RightPersonsListTableViewController: UITableViewController {

    let persons = Person.getPerson()

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.title
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personPhoneCell", for: indexPath)
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
