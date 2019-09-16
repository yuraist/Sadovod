//
//  HomeCollectionViewDataSource.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class HomeCollectionViewDataSource: NSObject, UICollectionViewDataSource {
  
  let unpaidOrdersCollectionViewDataSource = UnpaidOrdersCollectionViewDataSource()
  var popularCategories = [PopularCategory]()
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 2
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    if indexPath.item == 0 {
      return createPopularCategoriesCell(collectionView, forItemAt: indexPath)
    } else if indexPath.item == 1 {
      if (Token.shared.userIsAuthorized ?? false) {
        return createUnpaidCell(collectionView, forItemAt: indexPath)
      } else {
        return collectionView.dequeueReusableCell(withReuseIdentifier: AuthorizeCollectionViewCell.cellId, for: indexPath)
      }
    }
    
    return collectionView.dequeueReusableCell(withReuseIdentifier: AuthorizeCollectionViewCell.cellId, for: indexPath)
  }
 
  fileprivate func createPopularCategoriesCell(_ collectionView: UICollectionView, forItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomePopularCategoriesCollectionViewCell.cellId, for: indexPath) as! HomePopularCategoriesCollectionViewCell
    (cell.popularCategoriesCollectionView.dataSource as! PopularCategoriesDataSource).categories = popularCategories
    return cell
  }
  
  fileprivate func createUnpaidCell(_ collectionView: UICollectionView, forItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeUnpaidOrdersCollectionViewCell.cellId, for: indexPath) as! HomeUnpaidOrdersCollectionViewCell
    cell.collectionView.dataSource = unpaidOrdersCollectionViewDataSource
    return cell
  }
}
