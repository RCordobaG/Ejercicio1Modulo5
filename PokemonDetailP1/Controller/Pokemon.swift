//
//  Pokemon.swift
//  PokemonDetailP1
//
//  Created by Rodrigo Córdoba on 03/03/24.
//

import Foundation

struct Pokemon {
    let name : String
    let image : String
    let ability : String
    
    init(dict : [String : String]){
        self.name = dict["name"]!
        self.image = dict["image"]!
        self.ability = dict["ability"]!
    }
    
}
