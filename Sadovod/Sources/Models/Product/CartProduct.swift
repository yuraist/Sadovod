//
//  CartProduct.swift
//  Sadovod
//
//  Created by Yura Istomin on 29/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct CartProduct: Codable {
  var priceId, note, name, image, count, cost, id: String
  
  enum CodingKeys: String, CodingKey {
    case note, name, count, cost, id
    case priceId = "price_id"
    case image = "img"
  }
}
