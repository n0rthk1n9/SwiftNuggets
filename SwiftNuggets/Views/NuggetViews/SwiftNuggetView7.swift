//
//  SwiftNugget7.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 27.11.2024.
//

import SwiftUI

struct SwiftNuggetView7: View {
    @State private var characters: String = ""
    @State private var words: String = ""
    @State private var scentences: String = ""
    @State private var hashtags: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section(".textInputAutocapitalization") {
                    TextField(
                        "EVERY LETTER IS CAPITALIZED",
                        text: $characters
                    )
                    .textInputAutocapitalization(.characters)
                    TextField(
                        "Every Word Is Capitalized",
                        text: $words
                    )
                    .textInputAutocapitalization(.words)
                    TextField(
                        "Every scentence is capitalized. This one too.",
                        text: $scentences
                    )
                    .textInputAutocapitalization(.sentences)
                    TextField(
                        "Nothing get's capitalized",
                        text: $hashtags
                    )
                    .textInputAutocapitalization(.never)
                }
                .textCase(.none)
            }
            .navigationTitle("Swift Nugget 7")
        }
    }
}

#Preview {
    SwiftNuggetView7()
}
