//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by Sovirov on 03/03/23.
//

import SwiftUI

class PokemonViewModel: ObservableObject{
    @Published var pokemon = [Pokemon]()
    
    let baseUrl = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    init(){
        print("mi")
        fetchPokemon()
    }
    func fetchPokemon(){
        guard let url = URL(string: baseUrl) else{ return }
        
        URLSession.shared.dataTask(with: url){ (data, response, error) in
            guard let data = data?.parseData(removeString: "null") else { return}
            print("hi \(data[2])")
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else {
                print("ko")
                return
            }
            
            
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }.resume()
    }
}

extension Data{
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        guard let data = parsedDataString?.data(using: .utf8) else {return nil}
        
        return data
    }
}
