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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func toggleClicked(_ sender: Any) {
        TableManager.toggle(view: PokeTable)
        PokeTable.reloadData()
    }
    
    
}

