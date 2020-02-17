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
    static func getPokemonNames (_ pokeList: [Pokemon],_ IndexPath: Int) -> String{
        return pokeList[IndexPath].name
    }
    
    // Returns id of Pokemon at specific index
    static func getPokemonIDs(_ pokeList: [Pokemon], _ IndexPath: Int) -> Int{
        return pokeList[IndexPath].id
    }
    
    // Returns photo of Pokemon at specific index
    static func getPokemonPhotos(_ IndexPath:Int) -> UIImage{
        if let url = URL(string: PokemonList[IndexPath].imageUrl){
            if let data = try? Data(contentsOf: url){
                if let image = UIImage(data: data){
                    return image
                }
            }
        }
        return UIImage(named:"pokeball.png")!
    }
    
    static func getPokemonPhotos(pokeList: [Pokemon], indexPath: Int) -> UIImage {
    guard let url = try? URL(string: pokeList[indexPath].imageUrl) else {
        return UIImage(named:"pokeball.png")!
        }
    guard let data = try? Data(contentsOf: url) else {
        return UIImage(named:"pokeball.png")!
        }
    return UIImage(data: data)!
    }
    
    
    // Gets specific stat of Pokemon at specific index while filtering
    static func getPokemonStats(_ pokeList: [Pokemon],_ IndexPath:Int,_ stat: String) -> Int{
        switch stat{
        case "total":
            return pokeList[IndexPath].total
        case "hp":
            return pokeList[IndexPath].health
        case "attack":
            return pokeList[IndexPath].attack
        case "defense":
            return pokeList[IndexPath].defense
        case "sp_atk":
            return pokeList[IndexPath].specialAttack
        case "sp_def":
            return pokeList[IndexPath].specialDefense
        case "speed":
            return pokeList[IndexPath].speed
        default:
            return 0
        }
    }
    
    // Returns array of types for Pokemon at specific index for search
    static func getPokemonTypes(_ pokeList: [Pokemon], _ IndexPath:Int) -> [String]{
            var typeList: [String] = []
            for type in pokeList[IndexPath].types {
                typeList.append(type.rawValue)
            }
            if typeList.count == 1 {
                typeList.append("")
            }
            return typeList
        }
    }




