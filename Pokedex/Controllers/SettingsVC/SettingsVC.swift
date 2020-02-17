//
//  SettingsVC.swift
//  Pokedex
//
//  Created by Olivia Li on 2020-02-16.
//  Copyright © 2020 Olivia Li. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
    var state: [String:Bool] = ["Bug":false, "Grass":false, "Dark":false, "Ground":false, "Dragon":false, "Ice":false, "Electric":false, "Normal":false, "Fairy":false, "Poison":false, "Fighting":false, "Psychic":false, "Fire":false, "Rock":false, "Flying":false, "Steel":false, "Ghost":false, "Water":false, "Unknown":false]

    @IBOutlet weak var bug: UISwitch!
    @IBOutlet weak var grass: UILabel!
    @IBOutlet weak var dark: UILabel!
    @IBOutlet weak var ground: UILabel!
    @IBOutlet weak var dragon: UILabel!
    @IBOutlet weak var ice: UILabel!
    @IBOutlet weak var electric: UILabel!
    @IBOutlet weak var normal: UILabel!
    @IBOutlet weak var fairy: UILabel!
    @IBOutlet weak var poison: UISwitch!
    @IBOutlet weak var fighting: UISwitch!
    @IBOutlet weak var psychic: UISwitch!
    @IBOutlet weak var fire: UISwitch!
    @IBOutlet weak var rock: UISwitch!
    @IBOutlet weak var flying: UISwitch!
    @IBOutlet weak var steel: UISwitch!
    @IBOutlet weak var ghost: UISwitch!
    @IBOutlet weak var water: UISwitch!
    @IBOutlet weak var unknown: UISwitch!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func bug(_ sender: Any) {
        state["Bug"] = !state["Bug"]!
    }
    @IBAction func grass(_ sender: Any) {
        state["Grass"] = !state["Grass"]!
    }
    @IBAction func dark(_ sender: Any) {
        state["Dark"] = !state["Dark"]!
    }
    @IBAction func ground(_ sender: Any) {
        state["Ground"] = !state["Ground"]!
    }
    @IBAction func dragon(_ sender: Any) {
        state["Dragon"] = !state["Dragon"]!
    }
    @IBAction func ice(_ sender: Any) {
        state["Ice"] = !state["Ice"]!
    }
    @IBAction func electric(_ sender: Any) {
        state["Electric"] = !state["Electric"]!
    }
    @IBAction func normal(_ sender: Any) {
        state["Normal"] = !state["Normal"]!
    }
    @IBAction func fairy(_ sender: Any) {
        state["Fairy"] = !state["Fairy"]!
    }
    @IBAction func poison(_ sender: Any) {
        state["Poison"] = !state["Poison"]!
    }
    @IBAction func fighting(_ sender: Any) {
        state["Fighting"] = !state["Fighting"]!
    }
    @IBAction func psychic(_ sender: Any) {
        state["Psychic"] = !state["Psychic"]!
    }
    @IBAction func fire(_ sender: Any) {
        state["Fire"] = !state["Fire"]!
    }
    @IBAction func rock(_ sender: Any) {
        state["Rock"] = !state["Rock"]!
    }
    @IBAction func flying(_ sender: Any) {
        state["Flying"] = !state["Flying"]!
    }
    @IBAction func steel(_ sender: Any) {
        state["Steel"] = !state["Steel"]!
    }
    @IBAction func ghost(_ sender: Any) {
        state["Ghost"] = !state["Ghost"]!
    }
    @IBAction func water(_ sender: Any) {
        state["Water"] = !state["Water"]!
    }
    @IBAction func unknown(_ sender: Any) {
        state["Unknown"] = !state["Unknown"]!
    }
    
    func filterData() {
           guard let vc = self.navigationController?.viewControllers[0] as! GridVC? else {
               return
           }
           vc.state = self.state
           self.navigationController?.popToRootViewController(animated: true)
       }
       
       override func viewWillDisappear(_ animated: Bool) {
           filterData()
       }

    
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
