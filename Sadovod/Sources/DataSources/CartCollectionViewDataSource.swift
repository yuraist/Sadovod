//
//  CartCollectionViewDataSource.swift
//  Sadovod
//
//  Created by Yura Istomin on 06/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class CartCollectionViewDataSource: NSObject, UICollectionViewDataSource {
  
  var products = [CartProduct(priceId: "2", note: "No note", name: "Платье", image: "...", count: "5", cost: "727 РУБ.", id: "1")]
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return products.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    return collectionView.dequeueReusableCell(withReuseIdentifier: CartCollectionViewCell.cellId, for: indexPath)
  }
  
}
