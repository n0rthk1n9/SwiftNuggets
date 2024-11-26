//
//  MainView.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 21.11.2024.
//

import SwiftUI

struct MainView: View {
    @Environment(NuggetsViewModel.self) var nuggetsViewModel

    var body: some View {
        NavigationStack {
            List {
                ForEach(nuggetsViewModel.weeks) { week in
                    Section(header: sectionHeader(weekTitle: week.title)) {
                        ForEach(week.nuggets) { nugget in
                            NavigationLink(destination: nugget.view) {
                                SwiftNuggetView5(title: nugget.title, emoji: nugget.emoji)
                            }
                        }
                    }
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
            .navigationTitle("Swift Nuggets 🍗")
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
    MainView()
        .environment(NuggetsViewModel())
}
