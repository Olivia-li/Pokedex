//
//  GridVC-CollectionView.swift
//  Pokedex
//
//  Created by Olivia Li on 2020-02-13.
//  Copyright © 2020 Olivia Li. All rights reserved.
//

import Foundation
import UIKit

extension GridVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        clickedPokemon = indexPath.item
        performSegue(withIdentifier: "toProfile", sender: self)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       if isFiltering{
            return filteredPokemon.count
        }
        return PokemonManager.PokemonList.count
        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokemonCell", for: indexPath) as! PokemonCell
        let poke: Pokemon
        if isFiltering{
          poke = filteredPokemon[indexPath.item]
          cell.picture.image = PokemonManager.getPokemonPhotos(pokeList: filteredPokemon, indexPath: indexPath.item)
        } else {
            poke = PokemonManager.PokemonList[indexPath.item]
            cell.picture.image = PokemonManager.getPokemonPhotos(indexPath.item)
        }
        cell.name.text = poke.name
        cell.id.text = "ID: \(poke.id)"
        cell.pokeInt = poke.id
        cell.pokeInt = indexPath.item
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        TableManager.changeDisplay(view: self.view)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let profile = segue.destination as? ProfileVC, segue.identifier == "toProfile" {
            if isFiltering{
                profile.pokeList = filteredPokemon
            }
            else{
                profile.pokeList = PokemonManager.PokemonList
            }
            profile.pokeInt = clickedPokemon
        }
        
    }
}

