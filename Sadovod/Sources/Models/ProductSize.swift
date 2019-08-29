//
//  ProductSize.swift
//  Sadovod
//
//  Created by Yura Istomin on 29/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct ProductSize: Codable {
  var id, value, available: String
  
  enum CodingKeys: String, CodingKey {
    case id, value
    case available = "aviable"
  }
}
