//
//  PokemonDataCell.swift
//  PokemonDetailP1
//
//  Created by Rodrigo Córdoba on 03/03/24.
//

import UIKit

class PokemonCell: UITableViewCell {

    @IBOutlet weak var PokemonImage: UIImageView!
    
    @IBOutlet weak var PokemonLabelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
