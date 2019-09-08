//
//  CatalogCollectionViewDataSource.swift
//  Sadovod
//
//  Created by Yura Istomin on 08/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class CatalogCollectionViewDataSource: NSObject, UICollectionViewDataSource {
  
  var products = [
    Product(id: "1",
            name: "",
            cost: "727 РУБ.",
            image: "http://tk-sad.ru/ipk/g3/0/1/1/1/0/462446.jpg",
            mediumImage: "http://tk-sad.ru/ipk/g3/0/1/1/1/0/462446.jpg",
            smallImage: "http://tk-sad.ru/ipk/g3/0/1/1/1/0/462446.jpg",
            url: "http://tk-sad.ru/ipk/g3/0/1/1/1/0/462446.jpg",
            active: nil, like: nil, lux: nil, mark: nil, sizes: nil),
    Product(id: "1",
            name: "",
            cost: "727 РУБ.",
            image: "http://tk-sad.ru/ipk/g3/0/1/1/1/0/462446.jpg",
            mediumImage: "http://tk-sad.ru/ipk/g3/0/1/1/1/0/462446.jpg",
            smallImage: "http://tk-sad.ru/ipk/g3/0/1/1/1/0/462446.jpg",
            url: "http://tk-sad.ru/ipk/g3/0/1/1/1/0/462446.jpg",
            active: nil, like: nil, lux: nil, mark: nil, sizes: nil)
  ]
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return products.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CatalogCollectionViewCell.cellId, for: indexPath) as! CatalogCollectionViewCell
    
    let product = products[indexPath.item]
    cell.image.loadImage(withUrlString: product.image!)
    cell.priceLabel.text = product.cost
    
    return cell
  }
  
}

