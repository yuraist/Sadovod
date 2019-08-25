//
//  ProductCategory.swift
//  Sadovod
//
//  Created by Yura Istomin on 25/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct ProductCategory: Codable {
  let id, title: String
  
  enum CodingKeys: String, CodingKey {
    case id = "cat"
    case title
  }
}
