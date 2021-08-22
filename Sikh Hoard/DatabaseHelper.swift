//
//  DatabaseHelper.swift
//  Sikh Hoard
//
//  Created by Kulpreet Singh on 2021-07-11.
//  Copyright © 2021 kulpreet. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DatabaseHelper {
    
    
    static var shareInstance = DatabaseHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func addInTheCart(object:[String:Any])  {
        
        let cart = NSEntityDescription.insertNewObject(forEntityName: "Cart", into: context!) as! Cart
        cart.descriptions = object["descriptions"] as? String
        cart.image = object["image"] as? Data
        cart.prices = object["price"] as? String
        cart.productCategory = object["productCategory"] as? String
        cart.productDetail = object["productDetail"] as? String
        cart.size = object["size"] as? String
        
        do {
            try context?.save()
            print("Data saved")
        } catch  {
            print("data is  not saved")
        }
        
        
    }
    
    func getCartData() -> [Cart] {
        var cart = [Cart]()
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Cart")
        
        do {
            cart = try context?.fetch(fetchRequest) as! [Cart]
        } catch  {
            print("unable to fetch data")
        }
        return cart
    }
    
    func deleteDataFromCart(index:Int) -> [Cart] {
        
        var cart = getCartData()
        context?.delete(cart[index])
        cart.remove(at: index)
        
        do {
            try context?.save()
        } catch  {
            print("unable to delete data")
        }
        
        return cart
    }
}
