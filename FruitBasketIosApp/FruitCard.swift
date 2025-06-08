//
//  FruitCard.swift
//  FruitBasketIosApp
//
//  Created by sonukg on 12/04/25.
//

import SwiftUI

struct FruitCard: View {
    let fruit: FruitsItem
    var action: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topTrailing) {
                // Fruit Image
                Image(fruit.img)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 180)
                    .clipped()
                    .overlay(
                        LinearGradient(
                            gradient: Gradient(colors: [.clear, .black.opacity(0.3)]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                
                // Favorite Button
                Button(action: action) {
                    Image(systemName: fruit.isFavorite ? "heart.fill" : "heart")
                        .font(.title2)
                        .foregroundColor(fruit.isFavorite ? .red : .white)
                        .padding(10)
                        .background(Circle().fill(Color.black.opacity(0.4)))
                }
                .padding(10)
            }
            
            // Content
            VStack(alignment: .leading, spacing: 8) {
                // Name and Price
                HStack(alignment: .top) {
                    Text(fruit.name)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Text("$\(fruit.price, specifier: "%.2f")")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.green)
                }
                
                // Description
                Text(fruit.des)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                
                // Quantity and Rating
                HStack(spacing: 16) {
                    HStack(spacing: 4) {
                        Image(systemName: "cube.box.fill")
                        Text("\(fruit.quantity) left")
                    }
                    .foregroundColor(fruit.quantity < 10 ? .orange : .blue)
                    
                    Spacer()
                    
                    HStack(spacing: 4) {
                        Image(systemName: "star.fill")
                        Text("\(Int.random(in: 3...5))")
                    }
                    .foregroundColor(.yellow)
                }
                .font(.caption)
                .padding(.top, 4)
            }
            .padding(16)
        }
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
        .padding(.horizontal, 8)
    }
}
