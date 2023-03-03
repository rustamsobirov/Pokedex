//
//  PokedexView.swift
//  Pokedex
//
//  Created by Sobirov on 03/03/23.
//

import Foundation
import SwiftUI

struct PokedexView: View{
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View{
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 16){
                    ForEach(viewModel.pokemon){pokemon in
                        PokemonCell(pokemon: pokemon)
                    }
                }
            }.padding(.top,8)
            .navigationTitle("Pokedex")
        }
    }
}

struct PokedexPreview: PreviewProvider{
    static var previews: some View{
        PokedexView()
    }
}
