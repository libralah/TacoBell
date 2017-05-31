//
//  TacoCell.swift
//  TacoBell
//
//  Created by Hung Nguyen on 5/31/17.
//  Copyright © 2017 Luvdub Nation. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, ReusableNib, Shakeable {

    @IBOutlet weak var imgPic: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!

    func configureCell(taco: Tacos) {
        
        imgPic.image = UIImage(named: taco.tacoProtein)
        nameLbl.text = taco.tacoName
        
    }
    
}
