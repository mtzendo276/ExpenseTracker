//
//  FilterTransactionView.swift
//  ExpenseTracker
//
//  Created by Chen Yue on 29/01/24.
//

import SwiftUI
import SwiftData

struct FilterTransactionView<Content: View>: View {
    
    var content: ([Transaction]) -> Content
    
    @Query(animation: .snappy) private var transactions: [Transaction]
    
    init(category: Category?, searchText: String, @ViewBuilder content: @escaping ([Transaction]) -> Content) {
        let rawValue = category?.rawValue ?? ""
        let predicate = #Predicate<Transaction> { transaction in
            return (transaction.title.localizedStandardContains(searchText) ||
                transaction.remarks.localizedStandardContains(searchText))
        }
        _transactions = Query(filter: predicate, sort: [SortDescriptor(\Transaction.dateAdded, order: .reverse)], animation: .snappy)
        self.content = content
    }
    
    var body: some View {
        content(transactions)
    }
}

//#Preview {
//    FilterTransactionView()
//}
