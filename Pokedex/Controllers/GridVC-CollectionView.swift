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
        return PokemonManager.getPokemonCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokemonCell", for: indexPath) as! PokemonCell
        
        cell.name.text = PokemonManager.getPokemonNames(indexPath.item)
        cell.id.text = String(PokemonManager.getPokemonIDs(indexPath.item))
        cell.picture.image = PokemonManager.getPokemonPhotos(indexPath.item)
        cell.pokeInt = indexPath.item
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return TableManager.changeDisplay(view: self.view)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let profile = segue.destination as? ProfileVC, segue.identifier == "toProfile" {
            profile.pokeInt = clickedPokemon
        }
    }

    
    
}
