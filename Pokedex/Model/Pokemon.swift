//
//  Pokemon.swift
//  Pokedex
//
//  Created by Soibrov on 03/03/23.
//

import Foundation
import SwiftUI

struct Pokemon : Decodable, Identifiable{
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 1, name: "Pokemon", imageUrl: "ok", type: "fire"),
    .init(id: 2, name: "Pokemon2", imageUrl: "k1", type: "water"),
    .init(id: 3, name: "Pokemon3", imageUrl: "ok", type: "fire")
]
