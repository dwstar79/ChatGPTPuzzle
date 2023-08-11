//
//  InAppPurchase.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import Foundation

class InAppPurchase {
    var id: String
    var name: String
    var productDescription: String // Renamed to avoid conflict
    var price: Double
    var type: PurchaseType

    init(id: String, name: String, description: String, price: Double, type: PurchaseType) {
        self.id = id
        self.name = name
        self.productDescription = description // Updated to new name
        self.price = price
        self.type = type
    }

    enum PurchaseType {
        case hintPack
        case storyBoost
        case customTheme
        // More types can be added here as needed
    }
}

extension InAppPurchase: CustomStringConvertible {
    var description: String {
        return "Purchase \(name) (\(type)): \(productDescription) - $\(price)" // Updated to new name
    }
}


