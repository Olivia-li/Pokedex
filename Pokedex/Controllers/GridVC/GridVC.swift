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
    var tempFilter: [Pokemon] = []
    var state:[String:Bool] = [:]
    var typeChanged: Bool = false
    var isTypeEmpty: Bool = false
    var atk_stats: [String] = ["0", "200"]
    var rangeChanged: Bool = false

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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        filterContentForAttack(Int(atk_stats[0]) ?? 0, Int(atk_stats[1]) ?? 200)
        filterContentForType(state)
        PokeTable.reloadData()
        print(atk_stats)
    }

    @IBAction func filterClicked(_ sender: Any) {
        performSegue(withIdentifier: "toSettings", sender: self)
    }
    @IBAction func toggleClicked(_ sender: Any) {
        TableManager.toggle(view: PokeTable)
        PokeTable.reloadData()
    }
    @IBAction func clearClicked(_ sender: Any) {
        typeChanged = false
        isTypeEmpty = false
        rangeChanged = false
        PokeTable.reloadData()
    }
    

}
    

