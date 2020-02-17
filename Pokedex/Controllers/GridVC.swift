//
//  ViewController.swift
//  Pokedex
//
//  Created by Olivia Li on 2020-02-13.
//  Copyright © 2020 Olivia Li. All rights reserved.
//

import UIKit

class GridVC: UIViewController {
    
    @IBOutlet weak var PokeTable: UICollectionView!
    var clickedPokemon: Int!
    let searchController = UISearchController(searchResultsController: nil)
    var filteredPokemon: [Pokemon] = []
    let categories = ["Bug", "Grass", "Dark", "Ground", "Dragon", "Ice", "Electric", "Normal", "Fairy", "Poison", "Fighting", "Fire", "Rock", "Flying", "Steel", "Ghost", "Water", "Unknown"]

    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Pokemon Names"
        self.navigationItem.searchController = searchController
        self.definesPresentationContext = true
        self.searchController.isActive = true
        definesPresentationContext = true
    }

    @IBAction func toggleClicked(_ sender: Any) {
        TableManager.toggle(view: PokeTable)
        PokeTable.reloadData()
    }
    

}
    

