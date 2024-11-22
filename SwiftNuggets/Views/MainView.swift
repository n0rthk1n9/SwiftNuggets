//
//  MainView.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 21.11.2024.
//

import SwiftUI

struct MainView: View {
    var views: [(title: String, view: AnyView)] = [
        (title: "Swift Nugget 1", view: AnyView(SwiftNuggetView1()))
    ]

    var body: some View {
        NavigationStack {
            List(views, id: \.title) { item in
                NavigationLink(destination: item.view) {
                    Text(item.title)
                }
            }
            .navigationTitle("Swift Nuggets 🍗")
        }
    }
}

#Preview {
    MainView()
}
