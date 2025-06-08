//
//  CartView.swift
//  FruitBasketIosApp
//
//  Created by sonukg on 07/06/25.
//

import SwiftUI

struct CartView: View {
    @State private var showPayment = false
    let cartItems = [
        ("Apple", 2, 3.0),
        ("Banana", 1, 1.5),
        ("Mango", 3, 2.0)
    ]
    
    var total: Double {
        cartItems.reduce(0) { $0 + Double($1.1) * $1.2 }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(cartItems, id: \.0) { item in
                    HStack {
                        Text(item.0)
                        Spacer()
                        Text("x\(item.1)")
                        Text(String(format: "$%.2f", item.2 * Double(item.1)))
                    }
                }
                HStack {
                    Text("Total:")
                        .fontWeight(.bold)
                    Spacer()
                    Text(String(format: "$%.2f", total))
                        .fontWeight(.bold)
                }
                .padding()
                Button("Proceed to Payment") {
                    showPayment = true
                }
                .buttonStyle(.borderedProminent)
                .padding()
                .sheet(isPresented: $showPayment) {
                    PaymentView()
                }
            }
            .navigationTitle("Cart")
        }
    }
}
