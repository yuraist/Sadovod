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
  
  private let viewModel = HomeViewModel()
  
  fileprivate var showUnpaidOrders: Bool {
    return Token.shared.userIsAuthorized ?? false
  }
  
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
    homeCollectionViewDataSource.popularCategories = viewModel.popularCategories
    collectionView.dataSource = homeCollectionViewDataSource
  }
  
  fileprivate func setupCollectionViewDelegate() {
    collectionView.delegate = self
  }
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
  fileprivate var popularCategoriesCellSize: CGSize {
    return CGSize(width: view.frame.width, height: HomePopularCategoriesCollectionViewCell.cellHeight)
  }
  
  fileprivate var authorizeCellSize: CGSize {
    return CGSize(width: view.frame.width, height: AuthorizeCollectionViewCell.cellHeight)
  }
  
  fileprivate var unpaidOrdersCellSize: CGSize {
    return CGSize(width: view.frame.width, height: HomeUnpaidOrdersCollectionViewCell.cellHeight)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    if indexPath.item == 0 {
      return popularCategoriesCellSize
    } else if indexPath.item == 1 {
      if showUnpaidOrders {
        return unpaidOrdersCellSize
      } else {
        return authorizeCellSize
      }
    }
    
    return CGSize(width: view.frame.width, height: AuthorizeCollectionViewCell.cellHeight)
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 24
  }
}
