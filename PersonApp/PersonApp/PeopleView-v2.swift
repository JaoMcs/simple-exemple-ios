//
//  PeopleView-v2.swift
//  PersonApp
//
//  Created by Joao Tavares on 04/02/23.
//

import SwiftUI

struct PeopleView: View {
    
    @ObservedObject var viewModel = PersonViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView {
                ForEach(viewModel.people) { person in
                    HStack {
                        NameView(name: person.name)
                        Spacer()
                        EmailPhoneNumberView(email: person.email, phoneNumber: person.phoneNumber)
                    }
                    .padding()
                }
            }
            .navigationTitle("Person List")
            .toolbar {
                Menu("MENU") {
                    Button("Reverse") {
                        viewModel.reverseOder()
                    }
                    Button("Remove Fist Person") {
                        viewModel.removeFistPerson()
                    }
                    Button("Remove Last Person") {
                        viewModel.removeLastPerson()
                    }
                    Button("Shuffle Oder") {
                        viewModel.shuffleOder()
                    }
                    Button("RESET") {
                        viewModel.addPerson()
                    }
                }
            }
        }
    }
}

struct EmailPhoneNumberView: View {
    var email: String
    var phoneNumber: String
    var body: some View {
        VStack (alignment: .trailing) {
            Text(email)
            Text(phoneNumber)
        }
    }
}

struct NameView: View {
    var name: String
    var body: some View {
        HStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(name)
                .font(.title2)
                .fontWeight(.bold)
        }
    }
}

struct PeopleView_v2_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
