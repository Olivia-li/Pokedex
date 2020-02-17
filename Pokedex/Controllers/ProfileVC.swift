//
//  ProfileVC.swift
//  Pokedex
//
//  Created by Olivia Li on 2020-02-13.
//  Copyright © 2020 Olivia Li. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    // Cell Identification Variable
    var pokeInt:Int!
    var pokeList: [Pokemon]!

    
    // Header information
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var id: UILabel!
    
    @IBOutlet weak var type1: UILabel!
    @IBOutlet weak var type2: UILabel!
    
    // Statistics information headers
    @IBOutlet weak var hp: UILabel!
    @IBOutlet weak var attack: UILabel!
    @IBOutlet weak var defense: UILabel!
    @IBOutlet weak var spAtk: UILabel!
    @IBOutlet weak var spDef: UILabel!
    @IBOutlet weak var Speed: UILabel!
    @IBOutlet weak var total: UILabel!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = PokemonManager.getPokemonNames(pokeList, pokeInt)
        id.text = String(PokemonManager.getPokemonIDs(pokeList, pokeInt))
        picture.image = PokemonManager.getPokemonPhotos(pokeList: pokeList, indexPath: pokeInt)
        type1.text = PokemonManager.getPokemonTypes(pokeList, pokeInt)[0]
        type2.text = PokemonManager.getPokemonTypes(pokeList, pokeInt)[1]
        hp.text = String(PokemonManager.getPokemonStats(pokeList, pokeInt, "hp"))
        attack.text = String(PokemonManager.getPokemonStats(pokeList, pokeInt, "attack"))
        defense.text = String(PokemonManager.getPokemonStats(pokeList, pokeInt, "defense"))
        spAtk.text = String(PokemonManager.getPokemonStats(pokeList, pokeInt, "sp_atk"))
        spDef.text = String(PokemonManager.getPokemonStats(pokeList, pokeInt, "sp_def"))
        Speed.text = String(PokemonManager.getPokemonStats(pokeList, pokeInt, "speed"))
        total.text = String(PokemonManager.getPokemonStats(pokeList, pokeInt, "total"))
    }
    
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
