//
//  SwiftNuggetView11.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 13.01.2025.
//

import SwiftUI

struct SwiftNuggetView11: View {
    @State private var animateGradient = false

    var body: some View {
        NavigationStack {
            LinearGradient(
                colors: [
                    .cyan,
                    .indigo,
                    .purple,
                    .mint,
                    .teal,
                ],
                startPoint: animateGradient ? .leading : .trailing,
                endPoint: animateGradient ? .trailing : .leading
            )
            .mask(
                Text("Happy New Year \(Image(systemName: "party.popper"))")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            )
            .onAppear {
                withAnimation(
                    .easeInOut(duration: 4)
                        .repeatForever(autoreverses: true)
                ) {
                    animateGradient.toggle()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("Swift Nugget 11")
        }
    }
}

#Preview {
    SwiftNuggetView11()
}
