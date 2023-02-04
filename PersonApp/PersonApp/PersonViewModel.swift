//
//  PersonViewModel.swift
//  PersonApp
//
//  Created by Joao Tavares on 04/02/23.
//

import SwiftUI

class PersonViewModel: ObservableObject {
    @Published var people: [Person] = []
    
    init () {
        addPerson()
    }
    
    func addPerson () {
        people = peopleData
    }
    
    func shuffleOder() {
        people.shuffle()
    }
    
    func reverseOder() {
        people.reverse()
    }
    
    func removeLastPerson() {
        people.removeLast()
    }
    
    func removeFistPerson() {
        people.removeFirst()
    }
}

let peopleData = [
    Person(name: "Joao", email: "joao@email.com", phoneNumber: "555-5551"),
    Person(name: "Erick", email: "Erick@email.com", phoneNumber: "555-5552"),
    Person(name: "Arthur", email: "Arthur@email.com", phoneNumber: "555-5553"),
    Person(name: "Mateus", email: "Mateus@email.com", phoneNumber: "555-5554"),
    Person(name: "Victor", email: "Victor@email.com", phoneNumber: "555-5555")
]
