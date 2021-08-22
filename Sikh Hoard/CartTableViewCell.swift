//
//  CartTableViewCell.swift
//  Sikh Hoard
//
//  Created by Kulpreet Singh on 2021-07-06.
//  Copyright © 2021 kulpreet. All rights reserved.
//

import UIKit

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var quantityLabel: UILabel!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var productDetailOutlet: UILabel!
    @IBOutlet weak var priceOutlet: UILabel!
    @IBOutlet weak var sizeOutlet: UILabel!
    @IBOutlet weak var availablityOfStock: UILabel!

    var cartValue:[Cart] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
   
    
    @IBAction func stepperForQuantity(_ sender: UIStepper) {
        
        let value = Int(sender.value)
        quantityLabel.text = String(value)
        
        
//        print(priceOutlet.text!)
        let newPrice = value * Int(priceOutlet.text!)!

        priceOutlet.text = "\(newPrice)"
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
