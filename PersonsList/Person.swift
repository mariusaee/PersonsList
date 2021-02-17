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
        [Person(name: "Luther", surname: "One", email: "one@umbrella.com", phone: "555-111"),
         Person(name: "Diego", surname: "Two", email: "two@umbrella.com", phone: "555-222"),
         Person(name: "Alison", surname: "Three", email: "three@umbrella.com", phone: "555-333"),
         Person(name: "Klaus", surname: "Four", email: "four@umbrella.com", phone: "555-444"),
         Person(name: "Number Five", surname: "Five", email: "five@umbrella.com", phone: "555-555"),
         Person(name: "DeadAsianGuy", surname: "Six", email: "six@umbrella.com", phone: "555-666"),
         Person(name: "Vanya", surname: "Seven", email: "seven@umbrella.com", phone: "555-777")
        ]
    }
}

