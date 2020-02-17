//
//  TableManager.swift
//  Pokedex
//
//  Created by Olivia Li on 2020-02-13.
//  Copyright © 2020 Olivia Li. All rights reserved.
//

import Foundation
import UIKit

class TableManager{
    static var row: Bool = true
    
    static func toggle(view: UIView){
        row = !row
        print(row)
    }
        
    
    static func changeDisplay(view:UIView) -> CGSize{
        if row == true{
            return CGSize(width: 150, height: 150)
        }
        return CGSize(width: 150, height: 150)
    }
}
