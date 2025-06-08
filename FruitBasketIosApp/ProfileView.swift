//
//  ProfileView.swift
//  FruitBasketIosApp
//
//  Created by sonukg on 07/06/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var address = "123 Apple St, Cupertino, CA"
    @State private var editingAddress = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("John Doe")
                                .font(.headline)
                            Text("john.doe@email.com")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                Section(header: Text("Account")) {
                    HStack {
                        Image(systemName: "phone.fill")
                        Text("+1 234 567 890")
                    }
                }
                Section(header: Text("Full Address")) {
                    if editingAddress {
                        TextField("Address", text: $address)
                        Button("Save") {
                            editingAddress = false
                        }
                    } else {
                        HStack {
                            Text(address)
                            Spacer()
                            Button("Edit") {
                                editingAddress = true
                            }
                        }
                    }
                }
                Section {
                    Button(action: {}) {
                        Text("Log Out")
                            .foregroundColor(.red)
                    }
                }
            .navigationTitle("Profile")
            }
        }
}
    }
