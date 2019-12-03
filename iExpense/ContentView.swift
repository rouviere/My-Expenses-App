//
//  ContentView.swift
//  iExpense
//
//  Created by Forrest Anderson on 12/3/19.
//  Copyright © 2019 Forrest Anderson. All rights reserved.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName  = "Baggins"
}

struct ContentView: View {
    @ObservedObject private var user = User()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Your name is \(user.firstName) \(user.lastName).")
                Form {
                    TextField("First name", text: $user.firstName)
                    TextField("Last name", text: $user.lastName)
                }
            }
            .navigationBarTitle("Hobbit names")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
