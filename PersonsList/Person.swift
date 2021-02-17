//
//  Person.swift
//  PersonsList
//
//  Created by Marius Malyshev on 17.02.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var title: String {
        name + " " + surname
    }
    
}

extension Person {
    static func getPerson() -> [Person] {
        [Person(name: "Luther", surname: "One", email: "one@umbrella.com", phone: "111"),
         Person(name: "Diego", surname: "Two", email: "two@umbrella.com", phone: "222"),
         Person(name: "Vanya", surname: "Seven", email: "seven@umbrella.com", phone: "777"),
         Person(name: "Klaus", surname: "Four", email: "four@umbrella.com", phone: "444")
        ]
    }
}
