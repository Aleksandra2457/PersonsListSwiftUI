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
        HStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("Phone: " + selectedPerson.phoneNumber)
                    .multilineTextAlignment(.leading)
                Text("Email: " + selectedPerson.email)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            Spacer()
        }
        .navigationTitle(selectedPerson.fullName)
        .padding()
    }
}

struct PersonsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsDetailsView(selectedPerson: Person(name: "John", surname: "Smith", email: "1@mail.ru", phoneNumber: "111"))
    }
}
