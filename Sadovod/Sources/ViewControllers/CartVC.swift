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
  
  fileprivate let makeOrderButton = BlueRoundedButton(title: "Оформить 8 шт. на 5816 руб.")
  
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
    view.addSubviews(collectionView, makeOrderButton)
  }
  
  fileprivate func setupLayout() {
    view.backgroundColor = .white
    collectionView.anchor(top: view.topAnchor,
                          leading: view.safeAreaLayoutGuide.leadingAnchor,
                          bottom: view.bottomAnchor,
                          trailing: view.safeAreaLayoutGuide.trailingAnchor)
    
    makeOrderButton.anchor(top: nil,
                           leading: view.safeAreaLayoutGuide.leadingAnchor,
                           bottom: view.safeAreaLayoutGuide.bottomAnchor,
                           trailing: view.safeAreaLayoutGuide.trailingAnchor,
                           padding: .init(top: 0, left: 16, bottom: 12, right: 16),
                           size: .init(width: 0, height: 40))
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
