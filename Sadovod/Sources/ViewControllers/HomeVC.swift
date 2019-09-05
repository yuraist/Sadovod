//
//  HomeVC.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
  
  static let navigationTitle = "Главная"
  
  let homeCollectionViewDataSource = HomeCollectionViewDataSource()
  let collectionView = HomeCollectionView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupNavigationBar()
    addSubviews()
    setupLayout()
    
    setupCollectionViewDataSource()
    setupCollectionViewDelegate()
  }
  
  fileprivate func setupNavigationBar() {
    navigationItem.title = HomeVC.navigationTitle
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
    collectionView.dataSource = homeCollectionViewDataSource
  }
  
  fileprivate func setupCollectionViewDelegate() {
    collectionView.delegate = self
  }
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    let padding = CGFloat(28)
    
    if indexPath.item == 0 {
      return CGSize(width: view.frame.width, height: HomePopularCategoriesCollectionViewCell.cellHeight + padding)
    }
    
    return CGSize(width: view.frame.width, height: AuthorizeCollectionViewCell.cellHeight + padding)
  }
  
}
