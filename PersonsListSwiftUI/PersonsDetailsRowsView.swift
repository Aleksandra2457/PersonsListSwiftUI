//
//  PersonsDetailsRowsView.swift
//  PersonsListSwiftUI
//
//  Created by Александра Лесовская on 26.05.2022.
//

import SwiftUI

struct PersonsDetailsRowsView: View {
    
    let person: Person
    
    var body: some View {
        Label(person.email, systemImage: Contacts.email.rawValue)
        Label(person.phoneNumber, systemImage: Contacts.phone.rawValue)
    }
    
}

struct PersonsDetailsRowsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsDetailsRowsView(person: Person(name: "John", surname: "Smith", email: "1@mail.ru", phoneNumber: "111"))
    }
}
