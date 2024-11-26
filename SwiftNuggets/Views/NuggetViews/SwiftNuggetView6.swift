//
//  SwiftNuggetView6.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 26.11.2024.
//

import SwiftUI

struct SwiftNuggetView6: View {
    var title: String
    var emoji: String
    
    var body: some View {
        List {
            Section(header: sectionHeader(weekTitle: "Week 1")) {
                Text("Swift Nugget 6")
                    .badge(Text(emoji))
                    .padding()
                    .foregroundStyle(.mint)
            }
            .listRowBackground(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.secondary.opacity(0.2))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.mint, lineWidth: 1)
                    )
                    .padding(.vertical, 8)
                    .padding(.horizontal, 1)

            )
            .listRowSeparator(.hidden)
        }
    }
    
    private func sectionHeader(weekTitle: String) -> some View {
        HStack {
            Image(systemName: "calendar")
                .foregroundColor(.mint)
            Text(weekTitle)
                .font(.headline)
                .foregroundColor(.primary)
        }
        .padding(.vertical, 5)
    }
}

#Preview {
    SwiftNuggetView6(title: "Swift Nugget 6", emoji: "🍅")
}
