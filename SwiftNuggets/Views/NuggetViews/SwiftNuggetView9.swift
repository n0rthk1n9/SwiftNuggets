//
//  SwiftNuggetView9.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 05.12.2024.
//

import SwiftUI

struct SwiftNuggetView9: View {
    enum FocusedField {
        case fullName, nickName
    }
    
    @State private var fullName = ""
    @State private var nickName = ""
    @FocusState private var focusedField: FocusedField?
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Profile") {
                    TextField("Full name", text: $fullName)
                        .focused($focusedField, equals: .fullName)
                    TextField("Nickname", text: $nickName)
                        .focused($focusedField, equals: .nickName)
                }
            }
            .navigationTitle("Swift Nugget 9")
        }
        .onAppear {
            focusedField = .fullName
        }
    }
}

#Preview {
    SwiftNuggetView9()
}
