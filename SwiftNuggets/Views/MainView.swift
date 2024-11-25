//
//  MainView.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 21.11.2024.
//

import SwiftUI

struct MainView: View {
    var views: [(title: String, emoji: String, view: AnyView)] = [
        (title: "Swift Nugget 1", emoji: "🥘", view: AnyView(SwiftNuggetView1())),
        (title: "Swift Nugget 2", emoji: "🍲", view: AnyView(SwiftNuggetView2())),
        (title: "Swift Nugget 3", emoji: "🍖", view: AnyView(SwiftNuggetView3())),
        (title: "Swift Nugget 4", emoji: "🥩", view: AnyView(SwiftNuggetView4())),
        (title: "Swift Nugget 5", emoji: "🥓", view: AnyView(SwiftNuggetView5(title: "Swift Nugget 5", emoji: "🥓")))
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(views, id: \.title) { item in
                    NavigationLink(destination: item.view) {
                        SwiftNuggetView5(title: item.title, emoji: item.emoji)
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
}

#Preview {
    MainView()
}
