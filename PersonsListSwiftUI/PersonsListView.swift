//
//  PersonsListView.swift
//  PersonsListSwiftUI
//
//  Created by Александра Лесовская on 26.05.2022.
//

import SwiftUI

struct PersonsListView: View {
    
    @Binding var personsList: [Person]
    
    
    var body: some View {
        List(personsList, id: \.self) { person in
            NavigationLink(destination: PersonsDetailsView(selectedPerson: person)) {
                Text(person.fullName)
            }
        }
        .listStyle(.grouped)
        .navigationTitle("Persons List")
    }
        
    
    
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsListView(personsList: .constant(Person.getContactList()))
    }
}
