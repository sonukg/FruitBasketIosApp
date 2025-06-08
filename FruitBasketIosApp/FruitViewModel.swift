//
//  FruitViewModel.swift
//  FruitBasketIosApp
//
//  Created by sonukg on 12/04/25.
//
import SwiftUI

class FruitViewModel: ObservableObject {
    @Published var fruits: [FruitsItem] = FruitsItem.sampleData
    @Published var showFavoritesOnly = false
    
    var filteredFruits: [FruitsItem] {
        fruits.filter { fruit in
            (!showFavoritesOnly || fruit.isFavorite)
        }
    }
    
    func toggleFavorite(for fruit: FruitsItem) {
        if let index = fruits.firstIndex(where: { $0.id == fruit.id }) {
            fruits[index].isFavorite.toggle()
        }
    }
}
