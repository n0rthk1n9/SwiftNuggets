//
//  SwiftNuggetView5.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 25.11.2024.
//

import SwiftUI

struct SwiftNuggetView5: View {
    var title: String
    var emoji: String
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(emoji)
        }
        .padding()
        .foregroundStyle(.mint)
    }
}

#Preview {
    SwiftNuggetView5(title: "Swift Nugget 5", emoji: "🥓")
}
