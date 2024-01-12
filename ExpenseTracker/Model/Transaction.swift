//
//  Transaction.swift
//  ExpenseTracker
//
//  Created by Chen Yue on 12/01/24.
//

import Foundation

struct Transaction: Identifiable {
    
    let id: UUID = .init()
    
    var title: String
    var remarks: String
    var amount: Double
    var deteAdded: Date
    var category: String
    var tintColor: String
    
    init(title: String, remarks: String, amount: Double, deteAdded: Date, category: Category, tintColor: String) {
        self.title = title
        self.remarks = remarks
        self.amount = amount
        self.deteAdded = deteAdded
        self.category = category.rawValue
        self.tintColor = tintColor
    }
    
    
}
