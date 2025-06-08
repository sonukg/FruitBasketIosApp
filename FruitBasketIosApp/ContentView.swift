//
//  ContentView.swift
//  FruitBasketIosApp
//
//  Created by sonukg on 12/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            FavoriteView()
                .tabItem {
                    Label("Favorite", systemImage: "heart")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "arrow.right.circle")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
        }
    }
}

#Preview {
    ContentView()
}






