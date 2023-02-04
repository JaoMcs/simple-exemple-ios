//
//  Person.swift
//  PersonApp
//
//  Created by Joao Tavares on 04/02/23.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var phoneNumber: String
}
