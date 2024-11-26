//
//  Nugget.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 26.11.2024.
//

import SwiftUI

struct Nugget: Identifiable {
    let id = UUID()
    let title: String
    let emoji: String
    let view: AnyView
}
