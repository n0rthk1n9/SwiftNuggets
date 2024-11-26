//
//  Week.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 26.11.2024.
//

import SwiftUI

struct Week: Identifiable {
    let id = UUID()
    let title: String
    let nuggets: [Nugget]
}
