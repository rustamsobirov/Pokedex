//
//  PokedexCell.swift
//  Pokedex
//
//  Created by Sobirov on 03/03/23.
//

import Foundation
import SwiftUI

struct PokemonCell: View{
    let pokemon: Pokemon
    var body: some View{
        ZStack{
            VStack(alignment: .leading){
                Text(pokemon.name)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top,8)
                    .padding(.leading)
                
                HStack{
                    Text(pokemon.type)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal,16)
                        .padding(.vertical,8)
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white.opacity(0.25)))
                        .frame(width: 100,height: 24)
                    
                    
                    
                    Image(pokemon.imageUrl)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68,height: 68)
                        .padding([.bottom,.trailing],4)
                }
            }
        }
        .background(.green)
        .cornerRadius(12)
        .shadow(color: .green, radius: 6)
    }
}

struct PokemonCell_Preview: PreviewProvider{
    static var previews: some View{
        PokemonCell(pokemon: MOCK_POKEMON[1])
    }
}
