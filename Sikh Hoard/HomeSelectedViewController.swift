//
//  HomeSelectedViewController.swift
//  Sikh Hoard
//
//  Created by Kulpreet Singh on 2021-06-29.
//  Copyright © 2021 kulpreet. All rights reserved.
//

import UIKit
import iOSDropDown
import CoreData
class HomeSelectedViewController: UIViewController {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    
    @IBOutlet weak var productSize: DropDown!
    
    
    @IBOutlet weak var productDetails: UILabel!
    
    @IBOutlet weak var sizeLabel: UILabel!
    
    var image:UIImage!
    var price:String!
    var size: [String]!
    var productDetail: String!
    var productCategory: String!
    var descriptions: String!
    var valueFromDropDown:String = "S"

    override func viewDidLoad() {
        super.viewDidLoad()

        productImage.image = image
        productPrice.text = price
        productSize.optionArray = size
        productDetails.text = productDetail
       
        selectedTextFromDropDown()
      
    }
    
    func selectedTextFromDropDown() {
        
        
        productSize.didSelect{(selectedText , index ,id) in
            
            self.valueFromDropDown = selectedText
            }
        
      
        }
        
  
        

    @IBAction func addToCart(_ sender: Any) {
        
        let png = self.image.pngData()
        
        let attributes:[String:Any] = ["descriptions":descriptions!,"image":png! ,"price":price!,"productCategory":productCategory!,"productDetail":productDetail!,"size":valueFromDropDown]
        
        DatabaseHelper.shareInstance.addInTheCart(object: attributes)
        
        
//            let listVC = self.storyboard?.instantiateViewController(withIdentifier: "CartViewController") as! CartViewController
//
//            self.navigationController?.pushViewController(listVC, animated: true)
       
         
        
        
    }
    
    
}
