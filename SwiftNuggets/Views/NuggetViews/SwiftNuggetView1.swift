//
//  SwiftNuggetView1.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 21.11.2024.
//

import SwiftUI

struct SwiftNuggetView1: View {
    var body: some View {
        NavigationStack {
            Form {
                Section(".submitLabel") {
                    TextField(".submitLabel: Continue", text: .constant(""))
                        .submitLabel(.continue)
                    TextField(".submitLabel: Done", text: .constant(""))
                        .submitLabel(.done)
                    TextField(".submitLabel: Go", text: .constant(""))
                        .submitLabel(.go)
                    TextField(".submitLabel: Join", text: .constant(""))
                        .submitLabel(.join)
                    TextField(".submitLabel: Next", text: .constant(""))
                        .submitLabel(.next)
                    TextField(".submitLabel: Return", text: .constant(""))
                        .submitLabel(.return)
                    TextField(".submitLabel: Route", text: .constant(""))
                        .submitLabel(.route)
                    TextField(".submitLabel: Search", text: .constant(""))
                        .submitLabel(.search)
                    TextField(".submitLabel: Send", text: .constant(""))
                        .submitLabel(.send)
                }
                .textCase(.none)
            }
            .navigationTitle("Swift Nugget 1")
        }
    }
}

#Preview {
    SwiftNuggetView1()
}
