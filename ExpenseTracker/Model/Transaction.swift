//
//  Transaction.swift
//  ExpenseTracker
//
//  Created by Chen Yue on 12/01/24.
//

import SwiftUI
import SwiftData

@Model
class Transaction {
    
    var title: String
    var remarks: String
    var amount: Double
    var dateAdded: Date
    var category: String
    var tintColor: String
    
    var color: Color { tints.first(where: { $0.color == tintColor})?.value ?? appTint }
    var tint: TintColor? { tints.first(where: {$0.color == tintColor }) }
    var rawCategory: Category? { Category.allCases.first(where: { category == $0.rawValue }) }
    
    init(title: String, remarks: String, amount: Double, dateAdded: Date, category: Category, tintColor: TintColor) {
        self.title = title
        self.remarks = remarks
        self.amount = amount
        self.dateAdded = dateAdded
        self.category = category.rawValue
        self.tintColor = tintColor.color
    }
    
}

//var sampleTransactions: [Transaction] = [
//    .init(title: "Magic keyboad", remarks: "Apple Product", amount: 129, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
//    .init(title: "Apple Music", remarks: "Subscription", amount: 10.99, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
//    .init(title: "iCloud+", remarks: "Subscription", amount: 0.99, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
//    .init(title: "Payment", remarks: "Payment Received!", amount: 2499, dateAdded: .now, category: .income, tintColor: tints.randomElement()!),
//    
//]
