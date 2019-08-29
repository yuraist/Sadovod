//
//  Product.swift
//  Sadovod
//
//  Created by Yura Istomin on 28/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct Product: Codable {
  var id, name, cost: String
  var image, mediumImage, smallImage, url, active, like, lux: String?
  var mark: Int?
  var sizes: [ProductSize]?
  
  enum CodingKeys: String, CodingKey {
    case id, name, cost, url, active, like, lux, mark, sizes
    case image = "img"
    case mediumImage = "img_med"
    case smallImage = "img_small"
  }
}
