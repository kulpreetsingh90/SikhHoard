//
//  Products.swift
//  Sikh Hoard
//
//  Created by Kulpreet Singh on 2021-06-24.
//  Copyright © 2021 kulpreet. All rights reserved.
//

import Foundation
import UIKit

struct Product {
    
    let image: UIImage
    let descriptions: String
    let prices: String
    let size: [String]
    let productDetail: String
    let productCategory: String
    
}

let products:[Product] = [

    Product(image:#imageLiteral(resourceName: "Beard") ,descriptions: "Beard t-shirt", prices: "35", size:["S","L","M"], productDetail: "100 % cotton and soft fabric long lasting fabric for wear in any occasion", productCategory: "Clothing"),
    Product(image:#imageLiteral(resourceName: "Singh") ,descriptions: "Singh t-shirt", prices: "25",size:["S","L","M"], productDetail: "100 % cotton and soft fabric long lasting fabric for wear in any occasion", productCategory: "Clothing"),
    Product(image:#imageLiteral(resourceName: "white kurta pajama") ,descriptions: "White kurta pajama", prices: "30", size:["S","L","M"], productDetail: "completely cotton kurta pajama soft fabirc and comfortable specially for summer", productCategory: "Clothing"),
    Product(image:#imageLiteral(resourceName: "kurta pajama designer") ,descriptions: "Designer kurta pajama", prices: "30", size: ["S","L","M"], productDetail: "completely cotton kurta pajama soft fabirc and comfortable specially for summer and marriage occasion", productCategory: "Clothing"),
    Product(image:#imageLiteral(resourceName: "kisan ekta") ,descriptions: "kisaan ekta t-shirt", prices: "40", size: ["S","L","M"], productDetail: "100 % cotton and soft fabric long lasting fabric for wear in any occasion", productCategory:"Clothing"),
    Product(image:#imageLiteral(resourceName: "black kurta pajama") ,descriptions: "Black kurta pajama", prices: "38", size: ["S","L","M"], productDetail: "completely cotton kurta pajama soft fabirc and comfortable specially for summer", productCategory: "Clothing"),
    Product(image:#imageLiteral(resourceName: "modern wooden kara") ,descriptions: "modern wooden kara", prices: "5", size: ["S","L","M"], productDetail: "wooden kara for comb the hair and give natural theropy to head", productCategory: "Accessories"),
    Product(image:#imageLiteral(resourceName: "kanga wooden") ,descriptions: "wooden kanga", prices: "2", size: [""], productDetail: "wooden kara for comb the hair and give natural theropy to head", productCategory: "Accessories"),
    Product(image:#imageLiteral(resourceName: "shri sahib wooden") ,descriptions: "Shri sahib wooden", prices: "10", size: ["S","L","M"], productDetail: "Kirpan for bapitized guys it is 9 inch kirpan and completely srrounded by wooden myan", productCategory: "Accessories"),
    Product(image:#imageLiteral(resourceName: "shri sahib sarbloh") ,descriptions: "Shri sahib pure iron", prices: "15", size: ["S","L","M"], productDetail: "Kirpan for bapitized guys it is 9 inch kirpan and completely srrounded by iron myan", productCategory: "Accessories"),
    Product(image:#imageLiteral(resourceName: "punjab T-shirt") ,descriptions: "Punjab t-shirt", prices: "35", size: ["S","L","M"], productDetail: "100 % cotton and soft fabric long lasting fabric for wear in any occasion", productCategory: "Clothing"),
    Product(image:#imageLiteral(resourceName: "sarbat da bhalla") ,descriptions: "sarbhat da bhalla t-shirt", prices: "35", size: ["S","L","M"], productDetail: "100 % cotton and soft fabric long lasting fabric for wear in any occasion", productCategory: "Clothing"),
    Product(image:#imageLiteral(resourceName: "sarbh loh kara") ,descriptions: "sarbh loh kara", prices: "5", size: ["S","L","M"], productDetail: "Iron kara for bapirtized guys wearing everytime with them", productCategory: "Accessories"),
    Product(image:#imageLiteral(resourceName: "stainless steel kara") ,descriptions: "stainless steel kara", prices: "4", size: ["S","L","M"], productDetail: "Steel kara for bapirtized guys wearing everytime with them", productCategory: "Accessories"),
    Product(image:#imageLiteral(resourceName: "turbans") ,descriptions: "Turbans", prices: "25", size: ["S","L","M"], productDetail: "fullwall turbans and permanent color looks shiny and pride for sikh guys", productCategory: "Turbans"),
    Product(image:#imageLiteral(resourceName: "Asymmetric kurta pajama") ,descriptions: "Asymmetric kurta pajama", prices: "30", size: ["S","L","M"], productDetail: "100 % cotton and soft fabric long lasting fabric for wear in any occasion", productCategory: "Clothing"),
    Product(image:#imageLiteral(resourceName: "farmer") ,descriptions: "No farmer No food", prices: "35", size: ["S","L","M"], productDetail: "100 % cotton and soft fabric long lasting fabric for wear in any occasion", productCategory: "Clothing"),
    Product(image:#imageLiteral(resourceName: "Born to rule") ,descriptions: "Born to rule t-shirt", prices: "35", size: ["S","L","M"], productDetail: "100 % cotton and soft fabric long lasting fabric for wear in any occasion", productCategory: "Clothing"),
    Product(image:#imageLiteral(resourceName: "polished kara") ,descriptions: "Polished kanga", prices: "5", size: [""], productDetail: "wooden kara for comb the hair and give natural theropy to head", productCategory: "Accessories")]
