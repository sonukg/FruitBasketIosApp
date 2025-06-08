//
//  FruitItem.swift
//  FruitBasketIosApp
//
//  Created by sonukg on 12/04/25.
//

import Swift

import SwiftUI

struct FruitsItem: Identifiable, Codable {
    let id = UUID()
    let name: String
    let des: String
    let price: Double
    let quantity: Int
    let img: String
    var isFavorite: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case name, des, price, quantity, img, isFavorite
    }
}

extension FruitsItem {
    static var sampleData: [FruitsItem] = [
        FruitsItem(name: "Apple", des: "Creamy and sweet, packed with potassium", price: 0.99, quantity: 30, img: "apples"),
        FruitsItem(name: "Apricot", des: "Small and sweet with a pit in the center", price: 3.49, quantity: 22, img: "apricots"),
        FruitsItem(name: "Banana", des: "Bunches of sweet or tart small fruits", price: 2.99, quantity: 18, img: "banana"),
        FruitsItem(name: "Blueberries", des: "Tart green flesh with tiny black seeds", price: 2.49, quantity: 14, img: "blueberries"),
        FruitsItem(name: "Cherry", des: "Sour citrus fruit with bright yellow peel", price: 1.29, quantity: 25, img: "cherry"),
        FruitsItem(name: "Chestnut", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "chestnut"),
        FruitsItem(name: "Dragonfruit", des: "Tropical fruit with sweet and tangy yellow flesh", price: 4.49, quantity: 8, img: "dragonfruit"),
        FruitsItem(name: "Figs", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "figs"),
        FruitsItem(name: "Fruitsalad", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "fruitsalad"),
        FruitsItem(name: "Gooseberry", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "gooseberry"),
        FruitsItem(name: "Grapefruit", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "grapefruit"),
        FruitsItem(name: "Grapes", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "grapes"),
        FruitsItem(name: "Jackfruit", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "jackfruit"),
        FruitsItem(name: "Kiwi", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "kiwi"),
        FruitsItem(name: "Lemon", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "lemon"),
        FruitsItem(name: "Mango", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "mango"),
        FruitsItem(name: "Orange", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "orange"),
        FruitsItem(name: "Peach", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "peach"),
        FruitsItem(name: "Pear", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "pear"),
        FruitsItem(name: "Pineapples", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "pineapples"),
        FruitsItem(name: "Pitaya", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "pitaya"),
        FruitsItem(name: "Raspberries", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "raspberries"),
        FruitsItem(name: "Starfruit", des: "Sweet fruit with a distinctive shape", price: 1.89, quantity: 12, img: "starfruit"),
        FruitsItem(name: "Strawberry", des: "Juicy red berries with a delightful fragrance", price: 3.99, quantity: 12, img: "strawberry"),
        FruitsItem(name: "Watermelon", des: "Refreshing and hydrating summer favorite", price: 6.99, quantity: 7, img: "watermelon")
    ]
}
