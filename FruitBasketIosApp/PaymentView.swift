//
//  PaymentView.swift
//  FruitBasketIosApp
//
//  Created by sonukg on 07/06/25.
//

import SwiftUI

struct PaymentView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var selectedMethod = "UPI"
    let methods = ["Bank", "UPI", "Credit Card", "Debit Card", "Cash on Delivery"]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Select Payment Method")) {
                    ForEach(methods, id: \.self) { method in
                        HStack {
                            Text(method)
                            Spacer()
                            if selectedMethod == method {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            selectedMethod = method
                        }
                    }
                }
                Section {
                    Button("Pay Now") {
                        // Handle payment action
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .navigationTitle("Payment")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { dismiss() }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}
