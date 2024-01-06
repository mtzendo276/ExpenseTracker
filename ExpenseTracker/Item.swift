//
//  Item.swift
//  ExpenseTracker
//
//  Created by Chen Yue on 6/01/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
