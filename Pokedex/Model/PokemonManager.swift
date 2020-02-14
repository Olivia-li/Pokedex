//
//  CollectionManager.swift
//  Pokedex
//
//  Created by Olivia Li on 2020-02-13.
//  Copyright © 2020 Olivia Li. All rights reserved.
//

import Foundation
import UIKit

class PokemonManager{
    // List of all Pokemon
    static let PokemonList: [Pokemon] = PokemonGenerator.getPokemonArray()
    
    // Returns number of Pokemon
    static func getPokemonCount() -> Int{
        return PokemonGenerator.getPokemonArray().count
    }
    
    // Returns name of Pokemon at specific index
    static func getPokemonNames (_ IndexPath: Int) -> String{
        return PokemonList[IndexPath].name
    }
    
    // Returns id of Pokemon at specific index
    static func getPokemonIDs(_ IndexPath: Int) -> Int{
        return PokemonList[IndexPath].id
    }
    
    // Returns photo of Pokemon at specific index
    static func getPokemonPhotos(_ IndexPath:Int) -> UIImage{
        let url = URL(string: PokemonList[IndexPath].imageUrl) ?? URL(string: "https://upload.wikimedia.org/wikipedia/commons/4/4c/Pokeball.png")
        let data = try? Data(contentsOf: url!)
        return UIImage(data: data!)!
    }
    
    // Gets specific stat of Pokemon at specific index
    static func getPokemonStats(_ IndexPath:Int,_ stat: String) -> Int{
        switch stat{
        case "total":
            return PokemonList[IndexPath].total
        case "hp":
            return PokemonList[IndexPath].health
        case "attack":
            return PokemonList[IndexPath].attack
        case "defense":
            return PokemonList[IndexPath].defense
        case "sp_atk":
            return PokemonList[IndexPath].specialAttack
        case "sp_def":
            return PokemonList[IndexPath].specialDefense
        case "speed":
            return PokemonList[IndexPath].speed
        default:
            return 0
        }
    }
    
    // Returns array of types for Pokemon at specific index
    static func getPokemonTypes(_ IndexPath:Int) -> [String]{
        var typeList: [String] = []
        for type in PokemonList[IndexPath].types {
            typeList.append(type.rawValue)
        }
        if typeList.count == 1 {
            typeList.append("")
        }
        return typeList
    }
    
}
