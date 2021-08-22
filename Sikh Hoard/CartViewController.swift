//
//  CartViewController.swift
//  Sikh Hoard
//
//  Created by Kulpreet Singh on 2021-07-06.
//  Copyright © 2021 kulpreet. All rights reserved.
//

import UIKit

class CartViewController: UIViewController{

  
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var promoDiscount: UILabel!
    @IBOutlet weak var subTotalAmount: UILabel!
    
    var cart = [Cart]()
    
    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        cart = DatabaseHelper.shareInstance.getCartData()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
  
    func changeSubTotal() {
        
        
    }
    
}

extension CartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartcell", for: indexPath)
        as! CartTableViewCell
        
        cell.productDetailOutlet.text = cart[indexPath.row].productDetail
        cell.priceOutlet.text = cart[indexPath.row].prices
        cell.sizeOutlet.text = cart[indexPath.row].size
        cell.imageOutlet.image = UIImage(data: cart[indexPath.row].image!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            
            cart = DatabaseHelper.shareInstance.deleteDataFromCart(index: indexPath.row)
            self.tableview.deleteRows(at: [indexPath], with: .automatic)
            
        }
    }
  
   
}
