//
//  Endpoint.swift
//  Sadovod
//
//  Created by Yura Istomin on 22/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

enum Endpoint {
  
  static let urlPrefix = "/abpro"
  
  // MARK: - User
  static let checkToken = "/check_keys"
  static let auth = "/auth"
  static let fetchUserInfo = "/user/get"
  
  // MARK: - Catalog
  static let fetchProductsOfPopularCategory = "/get_tab_products"
  static let categoryList = "/cat_catalog"
  static let fetchCategoryTree = "/get_tree_by_catalog"
  static let fetchProductsOfCategory = "/cat_prods_catalog"
  static let fetchProductInfo = "/product"
  static let fetchBuyProductInfo = "/buy_product_info"
  
  // MARK: - Cart
  static let addProductToCart = "/buy_product_add"
  static let removeProductFromCart = "/buy_product_del"
  static let removeAllItemsOfProductFromCart = "/buy_product_clear_all"
  static let removeAllSizesOfProductFromCart = "/buy_product_clear"
  static let fetchShortCartInfo = "/cart_total"
  static let fetchDetailCartInfo = "/cart_info_detail"
}
