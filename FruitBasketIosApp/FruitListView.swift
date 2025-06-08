//
//  FruitListView.swift
//  FruitBasketIosApp
//
//  Created by sonukg on 12/04/25.
//

import SwiftUI

struct FruitListView: View {
    @StateObject private var viewModel = FruitViewModel()
    var searchText: String
    @State private var selectedPage = 0

    // Use your fruit image asset names here
    let productImages = ["apples", "banana", "mango"]

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                // Product ViewPager with Dots
                ProductPagerView(images: productImages, selectedPage: $selectedPage)
                    .frame(height: 120)
                    .padding(.horizontal, 16)
                    .padding(.top, 8)

                // Dots Indicator
                HStack(spacing: 12) {
                    ForEach(0..<productImages.count, id: \.self) { index in
                        Circle()
                            .fill(index == selectedPage ? Color.blue : Color.gray.opacity(0.4))
                            .frame(width: 8, height: 8)
                    }
                }
                .padding(.bottom, 12)

            

                // Fruit Cards
                ForEach(viewModel.filteredFruits.filter {
                    searchText.isEmpty || $0.name.localizedCaseInsensitiveContains(searchText)
                }) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitCard(fruit: fruit) {
                            viewModel.toggleFavorite(for: fruit)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.vertical)
        }
    }
}

struct ProductPagerView: View {
    let images: [String]
    @Binding var selectedPage: Int

    var body: some View {
        TabView(selection: $selectedPage) {
            ForEach(images.indices, id: \.self) { index in
                ZStack {
                    Color(.systemGray6)
                    Image(images[index])
                        .resizable()
                        .scaledToFit()
                        .padding(12)
                }
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
                .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .animation(.easeInOut, value: selectedPage)
    }
}
