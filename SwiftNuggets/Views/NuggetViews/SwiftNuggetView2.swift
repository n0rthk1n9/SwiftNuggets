//
//  SwiftNuggetView2.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 22.11.2024.
//

import SwiftUI

struct SwiftNuggetView2: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("Text") {
                    TextField(".keyboardType: emailAddress", text: .constant(""))
                        .keyboardType(.emailAddress)
                    TextField(".keyboardType: alphabet", text: .constant(""))
                        .keyboardType(.alphabet)
                    TextField(".keyboardType: asciiCapable", text: .constant(""))
                        .keyboardType(.asciiCapable)
                }
                Section("Numbers") {
                    TextField(".keyboardType: numberPad", text: .constant(""))
                        .keyboardType(.numberPad)
                    TextField(".keyboardType: decimalPad", text: .constant(""))
                        .keyboardType(.decimalPad)
                    TextField(".keyboardType: numbersAndPunctuation", text: .constant(""))
                        .keyboardType(.numbersAndPunctuation)
                    TextField(".keyboardType: namePhonePad", text: .constant(""))
                        .keyboardType(.namePhonePad)
                    TextField(".keyboardType: asciiCapableNumberPad", text: .constant(""))
                        .keyboardType(.asciiCapableNumberPad)
                    TextField(".keyboardType: phonePad", text: .constant(""))
                        .keyboardType(.phonePad)
                }
                Section("Special") {
                    TextField(".keyboardType: webSearch", text: .constant(""))
                        .keyboardType(.webSearch)
                    TextField(".keyboardType: URL", text: .constant(""))
                        .keyboardType(.URL)
                    TextField(".keyboardType: twitter", text: .constant(""))
                        .keyboardType(.twitter)
                    
                }
            }
            .navigationTitle("Swift Nugget 2")
        }
    }
}

#Preview {
    SwiftNuggetView2()
}
