//
//  ContentView.swift
//  PersonsListSwiftUI
//
//  Created by Александра Лесовская on 26.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    let personsList = Person.getContactList()
    
    var body: some View {
        NavigationView {
            TabView {
                PersonsListView(personsList: personsList)
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Contacts")
                    }
                DetailedPersonsList(personsList: personsList)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
