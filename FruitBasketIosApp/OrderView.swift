//
//  OrderView.swift
//  FruitBasketIosApp
//
//  Created by sonukg on 07/06/25.
//

import SwiftUI

struct OrderView: View {
    let orders = [
        ("Order #1001", "2x Apple, 1x Banana", "Delivered"),
        ("Order #1002", "1x Mango, 3x Strawberry", "In Progress"),
        ("Order #1003", "5x Orange", "Cancelled")
    ]

    var body: some View {
        NavigationView {
            List(orders, id: \.0) { order in
                VStack(alignment: .leading, spacing: 4) {
                    Text(order.0)
                        .font(.headline)
                    Text(order.1)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text(order.2)
                        .font(.caption)
                        .foregroundColor(order.2 == "Delivered" ? .green : (order.2 == "Cancelled" ? .red : .orange))
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("My Orders")
        }
    }
}
