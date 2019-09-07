//
//  CartCollectionViewDataSource.swift
//  Sadovod
//
//  Created by Yura Istomin on 06/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class CartCollectionViewDataSource: NSObject, UICollectionViewDataSource {
  
  var products = [
    CartProduct(priceId: "2",
                note: "No note",
                name: "Платье",
                image: "http://tk-sad.ru/ipk/g3/0/1/1/1/0/462446.jpg",
                count: "5",
                cost: "727 РУБ.",
                id: "1")
  ]
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return products.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CartCollectionViewCell.cellId, for: indexPath) as! CartCollectionViewCell
    
    let product = products[indexPath.item]
    
    cell.title.text = product.name
    cell.image.loadImage(withUrlString: product.image)
    cell.priceLabel.text = product.cost
    cell.sizeLabel.text = product.note
    
    return cell
  }
  
}
