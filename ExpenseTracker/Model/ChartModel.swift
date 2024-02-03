//
//  ChartModel.swift
//  ExpenseTracker
//
//  Created by Chen Yue on 3/02/24.
//

import Foundation

struct ChartGroup: Identifiable {
    
    let id: UUID = .init()
    var date: Date
    var categories: [ChartCategory]
    var totalIncome: Double
    var totalExpense: Double
    
}

struct ChartCategory: Identifiable {
    
    let id: UUID = .init()
    var totalValue: Double
    var category: Category
        
}
