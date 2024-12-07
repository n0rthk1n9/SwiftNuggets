//
//  SwiftNuggetsApp.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 21.11.2024.
//

import SwiftUI

@main
struct SwiftNuggetsApp: App {
    @State var nuggetsViewModel = NuggetsViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(nuggetsViewModel)
                .fontDesign(.rounded)
        }
    }
}
