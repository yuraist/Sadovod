//
//  UnpaidOrdersCollectionViewDataSource.swift
//  Sadovod
//
//  Created by Yura Istomin on 09/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

struct UnpaidOrder: Codable {
  var number: String
  var title: String
}

class UnpaidOrdersCollectionViewDataSource: NSObject, UICollectionViewDataSource {
  
  var orders = [
    UnpaidOrder(number: "3000880", title: "13 товаров на сумму 24598"),
    UnpaidOrder(number: "3000880", title: "13 товаров на сумму 24598"),
    UnpaidOrder(number: "3000880", title: "13 товаров на сумму 24598"),
    UnpaidOrder(number: "3000880", title: "13 товаров на сумму 24598")
  ]
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return orders.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: UnpaidOrderCollectionViewCell.cellId, for: indexPath) as! UnpaidOrderCollectionViewCell
    
    let order = orders[indexPath.item]
    cell.title.text = order.title
    cell.orderNumber.text = order.number
    
    return cell
  }
  
}
