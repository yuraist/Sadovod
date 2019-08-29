//
//  DetailProduct.swift
//  Sadovod
//
//  Created by Yura Istomin on 29/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct DetailProduct: Codable {
  var id, mark, lux: Int
  var status, name, cost, miniDescription, article: String
  
  var images: [String]
  var options: [ProductOption]
  var sizes: [ProductSize]
  
  enum CodingKeys: String, CodingKey {
    case id, mark, lux, status, name, cost, images, sizes
    case miniDescription = "mini_desc"
    case options = "opts"
    case article = "art"
  }
}
