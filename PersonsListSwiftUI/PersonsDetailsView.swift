//
//  PersonsDetailsView.swift
//  PersonsListSwiftUI
//
//  Created by Александра Лесовская on 26.05.2022.
//

import SwiftUI

struct PersonsDetailsView: View {
    
    let selectedPerson: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
            }
            PersonsDetailsRowsView(person: selectedPerson)
        }
        .navigationTitle(selectedPerson.fullName)
    }
}

struct PersonsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsDetailsView(selectedPerson: Person(name: "John", surname: "Smith", email: "1@mail.ru", phoneNumber: "111"))
    }
}
