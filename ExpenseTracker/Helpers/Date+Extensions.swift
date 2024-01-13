//
//  Date+Extensions.swift
//  ExpenseTracker
//
//  Created by Chen Yue on 13/01/24.
//

import SwiftUI

extension Date {
    
    var startOfMonth: Date {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month], from: self)
        return calendar.date(from: components) ?? self
    }
    
    var endOfMonth: Date { Calendar.current.date(byAdding: .init(month: 1, minute: -1), to: self.startOfMonth) ?? self }
    
}
