//
//  CartVC.swift
//  Sadovod
//
//  Created by Yura Istomin on 03/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

class CartVC: UIViewController {
  
  static let navigationTitle = "Корзина"
  
  fileprivate let collectionViewDataSource = CartCollectionViewDataSource()
  fileprivate let collectionView = CartCollectionView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupNavigationBar()
    addSubviews()
    setupLayout()
    
    setupCollectionViewDataSource()
    setupCollectionViewDelegate()
//    fetchCartProducts()
  }
  
  fileprivate func setupNavigationBar() {
    navigationItem.title = CartVC.navigationTitle
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
    collectionView.dataSource = collectionViewDataSource
  }
  
  fileprivate func setupCollectionViewDelegate() {
    collectionView.delegate = self
  }
  
  fileprivate func fetchCartProducts() {
    APIClient.shared.fetchCart { [weak self] (result) in
      DispatchQueue.main.async {
        switch result {
        case .success(let response):
          self?.collectionViewDataSource.products = response
          self?.collectionView.reloadData()
        case .failure(let error):
          self?.showErrorAlert(withText: error.message)
        }
      }
    }
  }
}

extension CartVC: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: view.frame.width, height: CartCollectionViewCell.cellHeight + 28)
  }
  
}
