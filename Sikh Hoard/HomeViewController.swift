//
//  HomeViewController.swift
//  Sikh Hoard
//
//  Created by Kulpreet Singh on 2021-06-24.
//  Copyright © 2021 kulpreet. All rights reserved.
//

import UIKit
class HomeViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()


        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    

  

}

extension HomeViewController: UICollectionViewDataSource{
 
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        
        cell.setup(with: products[indexPath.row])
        return cell
    }
    
    
    
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//          let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//                layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
//                layout.minimumInteritemSpacing = 5
//                layout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 20)/2, height: self.collectionView.frame.size.height / 3)
        
        return CGSize(width: (self.collectionView.frame.size.width - 10)/2, height: self.collectionView.frame.size.height / 2)
    }


}

extension HomeViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView:UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if #available(iOS 13.0, *) {
            let vc:HomeSelectedViewController = self.storyboard?.instantiateViewController(identifier: "HomeSelectedViewController") as! HomeSelectedViewController
            vc.image = products[indexPath.row].image
            vc.price = products[indexPath.row].prices
            vc.size = products[indexPath.row].size
            vc.productDetail = products[indexPath.row].productDetail
            vc.descriptions = products[indexPath.row].descriptions
            vc.productCategory = products[indexPath.row].productCategory
             self.navigationController?.pushViewController(vc, animated: true)
        } else {
            // Fallback on earlier versions
        }
       
        
    }
}
