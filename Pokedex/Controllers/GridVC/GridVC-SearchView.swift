//
//  GridVC-SearchView.swift
//  Pokedex
//
//  Created by Olivia Li on 2020-02-16.
//  Copyright © 2020 Olivia Li. All rights reserved.
//

import Foundation
import UIKit

extension GridVC: UISearchResultsUpdating,UISearchBarDelegate{
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        filterContentForSearchText(searchBar.text!)
    }
    
    var isSearchBarEmpty: Bool {
      return searchController.searchBar.text?.isEmpty ?? true
    }
    
     func filterContentForSearchText(_ searchText: String, category: PokeType? = nil, scope: String = "All") {
           filteredPokemon = PokemonManager.PokemonList.filter({( pokemon : Pokemon) -> Bool in
               return pokemon.name.lowercased().contains(searchText.lowercased())
           })
           PokeTable.reloadData()
    }
    
    var isFiltering: Bool {
      return searchController.isActive && !isSearchBarEmpty || (self.typeChanged && self.filterContentExists)
    }
    
    func filterContentForType(_ dict: [String:Bool]) {
        filteredPokemon = PokemonManager.PokemonList.filter { (pokemon: Pokemon) -> Bool in
            for type in pokemon.types {
                if dict[type.rawValue] == true{
                    return true
                }
            }
            print("type")
            return false
        }
        if filteredPokemon.capacity != 0 {
            self.filterContentExists = true
        }
        typeChanged = true
        PokeTable.reloadData()
    }
    
}
