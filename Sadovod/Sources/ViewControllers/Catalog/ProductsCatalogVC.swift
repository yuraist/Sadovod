//
//  ProductsCatalogVC.swift
//  Sadovod
//
//  Created by Yura Istomin on 08/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class ProductsCatalogVC: UIViewController {
  
  let catalogCollectionViewDataSource = CatalogCollectionViewDataSource()
  let collectionView = CatalogCollectionView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    addSubviews()
    setupLayout()
    
    setupCollectionViewDataSource()
    setupCollectionViewDelegate()
  }
  
  fileprivate func addSubviews() {
    view.addSubview(collectionView)
  }
  
  fileprivate func setupLayout() {
    view.backgroundColor = .white
    collectionView.anchor(top: view.topAnchor,
                          leading: view.safeAreaLayoutGuide.leadingAnchor,
                          bottom: view.bottomAnchor,
                          trailing: view.safeAreaLayoutGuide.trailingAnchor)
  }
  
  fileprivate func setupCollectionViewDataSource() {
    collectionView.dataSource = catalogCollectionViewDataSource
  }
  
  fileprivate func setupCollectionViewDelegate() {
    collectionView.delegate = self
    
    collectionView.contentInset = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12)
  }
}

extension ProductsCatalogVC: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = (view.frame.width - 36) / 2
    let height = width / 3 * 4
    return CGSize(width: width, height: height)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 12
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 12
  }
}
