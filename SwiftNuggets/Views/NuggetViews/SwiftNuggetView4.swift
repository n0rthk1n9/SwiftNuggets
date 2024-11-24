//
//  SwiftNuggetView4.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 24.11.2024.
//

import SwiftUI

struct SwiftNuggetView4: View {
    @State private var amount: Double = 0.0
    
    private var localCurrencyCode: String? = Locale.current.currency?.identifier
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Formatted currency amount") {
                    TextField(
                        "Format currency",
                        value: $amount,
                        format: .currency(code: localCurrencyCode ?? "EUR")
                    )
                        .keyboardType(.decimalPad)
                }
            }
            .navigationTitle("Swift Nugget 4")
        }
    }
}

#Preview {
    SwiftNuggetView4()
}
