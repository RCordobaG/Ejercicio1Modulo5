//
//  PokemonDataManager.swift
//  PokemonDetailP1
//
//  Created by Rodrigo Córdoba on 03/03/24.
//

import Foundation

class PokemonDataManager{
    
    private var pokemons : [Pokemon] = []
    
    //data source array :P
    let pokemonsArray = [
            ["image":"0", "name": "Wartortle", "ability": "Water Gun"],
            ["image":"1", "name": "Bulbasaur", "ability": "Razor Leaf"],
            ["image":"2", "name": "Blastoise", "ability": "Hydro Pump"],
            ["image":"3", "name":"Butterfree", "ability": "Poison Powder"],
            ["image":"4", "name":"Ivysaur", "ability": "Seed Bomb"],
            ["image":"5", "name":"Jigglypuf", "ability": "Sing"],
            ["image":"6", "name":"Charmander", "ability": "Ember"],
            ["image":"7", "name":"Meowth", "ability": "Pay Day"],
            ["image":"8", "name":"Alakazam", "ability": "Psybeam"],
            ["image":"9", "name":"Pidgey", "ability": "Gust"],
            ["image":"10", "name":"Raichu", "ability": "Thunder Shock"],
            ["image":"11", "name":"Rattata", "ability": "Tackle"],
            ["image":"12", "name":"Vaporeon", "ability": "Aqua Ring"],
            ["image":"13", "name":"Jynx", "ability": "Sweet Kiss"],
            ["image":"14", "name":"Venusaur", "ability": "Solar Beam"],
            ["image":"15", "name":"Linea", "ability": "Tackle"],
            ["image":"16", "name":"Slowbro", "ability": "Amnesia"],
            ["image":"17", "name":"Dewgong", "ability": "Aurora Beam"],
            ["image":"19", "name":"Wigglytuff", "ability": "Charm"],
            ["image":"20", "name":"Scyther", "ability": "X-Scissor"],
            ["image":"21", "name":"Golduk", "ability": "Zen Headbutt"],
            ["image":"22", "name":"Lapras", "ability": "Brine"],
            ["image":"23", "name":"Sandshrew", "ability": "Sand Attack"]
            ]

    
    func fetch() {
        for pokemon in pokemonsArray {
            pokemons.append(Pokemon(dict: pokemon))
            print(pokemon)
        }
    }
    
    func getPokemon(at index : Int) -> Pokemon {
        return pokemons[index]
    }
    
    func countPokemons() -> Int {
        return pokemons.count
    }
}
