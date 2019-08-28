//
//  TreeCategory.swift
//  Sadovod
//
//  Created by Yura Istomin on 28/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct TreeCategory: Codable {
  var name, lux: String
  var id, count, level, news: Int
  var subcategories: [TreeCategory]?
  
  enum CodingKeys: String, CodingKey {
    case lux, news
    case name = "n"
    case id = "i"
    case count = "c"
    case level = "l"
    case subcategories = "t"
  }
}
