//
//  DetailedPersonsList.swift
//  PersonsListSwiftUI
//
//  Created by Александра Лесовская on 26.05.2022.
//

import SwiftUI

struct DetailedPersonsList: View {
    
    let personsList: [Person]
    
    var body: some View {
        List(personsList) { person in
            Section(person.fullName) {
                Label(person.email, systemImage: Contacts.email.rawValue)
                Label(person.phoneNumber, systemImage: Contacts.phone.rawValue)
            }
        }
    }
    
}

struct DetailedPersonsList_Previews: PreviewProvider {
    static var previews: some View {
        DetailedPersonsList(personsList: Person.getContactList())
    }
}
