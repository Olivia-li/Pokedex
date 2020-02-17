//
//  PokemonCell.swift
//  Pokedex
//
//  Created by Olivia Li on 2020-02-13.
//  Copyright © 2020 Olivia Li. All rights reserved.
//

import Foundation
import UIKit

class PokemonCell: UICollectionViewCell{
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var picture: UIImageView!
    
    var pokeInt:Int?

}
