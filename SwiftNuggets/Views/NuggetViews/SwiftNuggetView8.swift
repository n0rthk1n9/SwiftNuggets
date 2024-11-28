//
//  SwiftNuggetView8.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 28.11.2024.
//

import SwiftUI

struct SwiftNuggetView8: View {
    @State private var autocorrectedText = ""
    @State private var notAutocorrectedText = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section(".autocorrectionDisabled") {
                    TextField(
                        "This text will be NOT autocorrected",
                        text: $autocorrectedText
                    )
                    .autocorrectionDisabled()
                    TextField(
                        "This text will be autocorrected",
                        text: $notAutocorrectedText
                    )
                }
                .textCase(.none)
            }
            .navigationTitle("Swift Nugget 8")
        }
    }
}

#Preview {
    SwiftNuggetView8()
}
