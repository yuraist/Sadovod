//
//  UpdateProductInCartResponse.swift
//  Sadovod
//
//  Created by Yura Istomin on 29/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct UpdateProductInCartResponse: Codable {
  var product: Product
  var total: String
  var globalCount, globalCost: Int
  
  enum CodingKeys: String, CodingKey {
    case product, total
    case globalCount = "global_count"
    case globalCost = "global_cost"
  }
}
