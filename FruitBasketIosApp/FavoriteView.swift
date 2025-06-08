//
//  FavoriteView.swift
//  FruitBasketIosApp
//
//  Created by sonukg on 07/06/25.
//


import SwiftUI

struct FavoriteView: View {
    let favoriteItems = ["Apple", "Banana", "Mango", "Strawberry"]

    var body: some View {
        NavigationView {
            List(favoriteItems, id: \.self) { item in
                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Text(item)
                }
            }
            .navigationTitle("Favorites")
        }
    }
}
