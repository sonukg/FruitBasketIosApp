//
//  FruitDetailView.swift
//  FruitBasketIosApp
//
//  Created by sonukg on 12/04/25.
//

import SwiftUI

struct FruitDetailView: View {
    let fruit: FruitsItem

    var body: some View {
        ScrollView {
            ZStack(alignment: .top) {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()

                VStack(spacing: 0) {
                    // Title at the top
                
                    Spacer().padding(.top,50)                    // Hero Image with top padding
                    Image(fruit.img)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 220)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .cornerRadius(24, corners: [.topLeft, .topRight])
                        .overlay(
                            LinearGradient(
                                gradient: Gradient(colors: [.clear, .black.opacity(0.2)]),
                                startPoint: .top,
                                endPoint: .bottom
                            )
                            .cornerRadius(24, corners: [.topLeft, .topRight])
                        )
                        .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 4)
                        .padding(.top, 32)

                    // Content Card
                    VStack(alignment: .leading, spacing: 20) {
                        HStack(alignment: .top) {
                            Text(fruit.name)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)

                            Spacer()

                            Text("$\(fruit.price, specifier: "%.2f")")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.green)
                        }

                        Text(fruit.des)
                            .font(.body)
                            .foregroundColor(.secondary)

                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                            DetailItem(icon: "cube.box.fill", title: "Quantity", value: "\(fruit.quantity)")
                            DetailItem(icon: "star.fill", title: "Rating", value: "\(Int.random(in: 3...5))/5")
                            DetailItem(icon: "leaf.fill", title: "Freshness", value: "High")
                            DetailItem(icon: "shippingbox.fill", title: "Origin", value: "Tropical")
                        }

                        Button(action: {}) {
                            HStack {
                                Spacer()
                                Text("Add to Cart")
                                    .font(.headline)
                                Image(systemName: "cart.fill")
                                Spacer()
                            }
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                        }
                        .padding(.top, 8)
                    }
                    .padding(24)
                    .background(Color(.systemBackground))
                    .cornerRadius(24)
                    .shadow(color: Color.black.opacity(0.06), radius: 8, x: 0, y: 2)
                    .offset(y: -32)
                }
                .padding(.horizontal, 16)
                .padding(.top, 8)
            }
        }
        .background(Color(.systemGroupedBackground))
        .edgesIgnoringSafeArea(.top)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// Helper for corner radius on specific corners
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct DetailItem: View {
    let icon: String
    let title: String
    let value: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.green)
                Text(title)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Text(value)
                .font(.title3)
                .fontWeight(.medium)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(12)
    }
}


