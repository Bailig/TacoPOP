//
//  TacoCollectionViewCell.swift
//  TacoPOP
//
//  Created by Bailig Abhanar on 2017-04-09.
//  Copyright © 2017 Bailig Abhanar. All rights reserved.
//

import UIKit

class TacoCollectionViewCell: UICollectionViewCell, NibLoadableView, Shakeable {

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco! {
        didSet {
            tacoImage.image = UIImage(named: taco.protein.rawValue)
            tacoLabel.text = taco.productName
        }
    }
}
