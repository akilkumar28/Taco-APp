//
//  TacoCell.swift
//  Taco APp
//
//  Created by AKIL KUMAR THOTA on 1/1/17.
//  Copyright © 2017 AKIL KUMAR THOTA. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, Shakeable{

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLabel.text =  taco.productName
    }

}
