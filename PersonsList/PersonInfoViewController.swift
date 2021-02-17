//
//  PersonInfoViewController.swift
//  PersonsList
//
//  Created by Marius Malyshev on 17.02.2021.
//

import UIKit

class PersonInfoViewController: UIViewController {

    @IBOutlet var personInfoLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        personInfoLabel.text = "Email: \(person.email)\nPhone: \(person.phone)"
    }

}
