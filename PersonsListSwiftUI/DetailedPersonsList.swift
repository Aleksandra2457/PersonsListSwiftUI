//
//  DetailedPersonsList.swift
//  PersonsListSwiftUI
//
//  Created by Александра Лесовская on 26.05.2022.
//

import SwiftUI

struct DetailedPersonsList: View {
    
    @Binding var personsList: [Person]
    
    var body: some View {
        List {
            ForEach(personsList) { person in
                Section(person.fullName) {
                    HStack {
                        Label(person.email, systemImage: Contacts.email.rawValue)
                    }
                    HStack {
                        Label(person.phoneNumber, systemImage: Contacts.phone.rawValue)
                    }
                }
                .listRowSeparator(.visible)
            }
        }
        .listStyle(.grouped)
    }
    
}

struct DetailedPersonsList_Previews: PreviewProvider {
    static var previews: some View {
        DetailedPersonsList(personsList: .constant(Person.getContactList()))
    }
}
