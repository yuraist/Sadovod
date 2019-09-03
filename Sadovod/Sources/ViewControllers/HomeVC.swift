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
    collectionView.fillSuperview()
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
    // TODO: - Estimate height or move the the constants
    return CGSize(width: view.frame.width, height: 210 + 16 + 12)
  }
  
}
