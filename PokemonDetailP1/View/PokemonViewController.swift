//
//  PokemonViewController.swift
//  PokemonDetailP1
//
//  Created by Rodrigo Córdoba on 03/03/24.
//

import UIKit

class PokemonViewController: UIViewController {
    
    @IBOutlet weak var PokemonTableView: UITableView!
    
    let pokemonDataManager = PokemonDataManager()
    var selectedPokemon : Pokemon?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pokemonDataManager.fetch()
    }
}




extension PokemonViewController : UITableViewDelegate, UITableViewDataSource{
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("count sexo")
        return pokemonDataManager.countPokemons()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonCell", for: indexPath) as! PokemonCell
        let pokemon = pokemonDataManager.getPokemon(at: indexPath.row)
        print(indexPath.row)
        print(pokemonDataManager.getPokemon(at: indexPath.row))
        cell.PokemonImage.image = UIImage(named: pokemon.image)
        cell.PokemonLabelName.text = pokemon.name
        
        return cell
    }
    

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row selected \(indexPath.row)")
        selectedPokemon = pokemonDataManager.getPokemon(at: indexPath.row)
        self.performSegue(withIdentifier: "detailSegue", sender: Self.self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PokemonDetailViewController
        destination.receivedPokemon = selectedPokemon
    }
    
}
