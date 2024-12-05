//
//  NuggetsViewModel.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 26.11.2024.
//

import SwiftUI

@Observable
class NuggetsViewModel {
    var weeks: [Week]

    init() {
        weeks = NuggetsViewModel.generateWeeks()
    }

    private static func generateWeeks() -> [Week] {
        [
            Week(title: "Week 1", nuggets: [
                createNugget(title: "Swift Nugget 1", emoji: "🥘", view: SwiftNuggetView1()),
                createNugget(title: "Swift Nugget 2", emoji: "🍲", view: SwiftNuggetView2()),
                createNugget(title: "Swift Nugget 3", emoji: "🍖", view: SwiftNuggetView3()),
                createNugget(title: "Swift Nugget 4", emoji: "🥩", view: SwiftNuggetView4()),
                createNugget(title: "Swift Nugget 5", emoji: "🥓", view: SwiftNuggetView5(title: "Swift Nugget 5", emoji: "🥓")),
                createNugget(title: "Swift Nugget 6", emoji: "🍅", view: SwiftNuggetView6(title: "Swift Nugget 6", emoji: "🍅")),
                createNugget(title: "Swift Nugget 7", emoji: "🍕", view: SwiftNuggetView7())
            ]),
            Week(title: "Week 2", nuggets: [
                createNugget(title: "Swift Nugget 8", emoji: "🍓", view: SwiftNuggetView8()),
                createNugget(title: "Swift Nugget 9", emoji: "🍐", view: SwiftNuggetView9())
            ])
        ]
    }

    private static func createNugget<V: View>(title: String, emoji: String, view: V) -> Nugget {
        Nugget(title: title, emoji: emoji, view: AnyView(view))
    }
}
