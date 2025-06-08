//
//  HomeView.swift
//  FruitBasketIosApp
//
//  Created by sonukg on 08/06/25.
//


import SwiftUI

struct HomeView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                SearchBar(text: $searchText)
                    .padding(.horizontal)
                    .padding(.top)
                FruitListView(searchText: searchText)
            }
            .navigationTitle("Home")
            .background(Color(.systemGroupedBackground).edgesIgnoringSafeArea(.all))
        }
    }
}

// SearchBar component
struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search fruits...", text: $text)
                .textFieldStyle(PlainTextFieldStyle())
            if !text.isEmpty {
                Button(action: { text = "" }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }
            }
        }
        .padding(8)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}
