//
//  TransactionCardView.swift
//  ExpenseTracker
//
//  Created by Chen Yue on 13/01/24.
//

import SwiftUI

struct TransactionCardView: View {
    
    @Environment(\.modelContext) private var context
    var transcation: Transaction
    var showCategory: Bool = false
    
    var body: some View {
        SwipeActionView(cornerRadius: 15, direction: .trailing) {
            HStack(spacing: 12) {
                Text("\(String(transcation.title.prefix(1)))")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 45, height: 45)
                    .background(transcation.color.gradient, in: .circle)
                VStack(alignment: .leading, spacing: 4, content: {
                    Text(transcation.title)
                        .foregroundStyle(Color.primary)
                    Text(transcation.remarks)
                        .font(.caption)
                        .foregroundStyle(Color.primary.secondary)
                    Text(format(date: transcation.dateAdded, format: "dd MMM yyyy"))
                        .font(.caption2)
                        .foregroundStyle(.gray)
                    if showCategory {
                        Text(transcation.category)
                            .font(.caption2)
                            .padding(.horizontal, 5)
                            .padding(.vertical, 2)
                            .foregroundStyle(.white)
                            .background(transcation.category == Category.income.rawValue ? Color.green.gradient : Color.red.gradient, in: .capsule)
                    }
                })
                .lineLimit(1)
                .hSpacing(.leading)
                Text(currencyString(transcation.amount, allowedDigits: 2))
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background(.background, in: .rect(cornerRadius: 10))
        } actions: {
            Action(tint: .red, icon: "trash.fill") {
                context.delete(transcation)
            }
        }
    }
    
}

#Preview {
    ContentView()
}
