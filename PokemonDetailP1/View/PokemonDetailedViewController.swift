//
//  PokemonDetailedViewController.swift
//  PokemonDetailP1
//
//  Created by Rodrigo Córdoba on 03/03/24.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    
    @IBOutlet weak var DetailImage: UIImageView!
    @IBOutlet weak var DetailNameLabel: UILabel!
    
    @IBOutlet weak var DetailAbilityLabel: UILabel!
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    var receivedPokemon : Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Pokemon", receivedPokemon!)
        DetailImage.image = UIImage(named: receivedPokemon!.image)
        DetailNameLabel.text = receivedPokemon!.name
        DetailAbilityLabel.text = receivedPokemon!.ability
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
