//
//  HomeCollectionViewCell.swift
//  Sikh Hoard
//
//  Created by Kulpreet Singh on 2021-06-24.
//  Copyright © 2021 kulpreet. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func setup(with product: Product) {
        
        productImage.image = product.image
        productDescription.text = product.descriptions
        productPrice.text = product.prices
    }
}
