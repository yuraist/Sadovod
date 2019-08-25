//
//  ProductCategory.swift
//  Sadovod
//
//  Created by Yura Istomin on 25/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct ProductCategory: Codable {
  let id, name, news, productCount, lux: String
  
  enum CodingKeys: String, CodingKey {
    case id = "cat_id"
    case name = "cat_name"
    case productCount = "prod_cnt"
    case news, lux
  }
}
