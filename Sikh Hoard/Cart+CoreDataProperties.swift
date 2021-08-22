//
//  Cart+CoreDataProperties.swift
//  
//
//  Created by Kulpreet Singh on 2021-07-11.
//
//

import Foundation
import CoreData


extension Cart {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Cart> {
        return NSFetchRequest<Cart>(entityName: "Cart")
    }

    @NSManaged public var descriptions: String?
    @NSManaged public var prices: String?
    @NSManaged public var productCategory: String?
    @NSManaged public var productDetail: String?
    @NSManaged public var size: String?
    @NSManaged public var image: Data?

}
