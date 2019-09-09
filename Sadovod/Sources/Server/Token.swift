//
//  Token.swift
//  Sadovod
//
//  Created by Yura Istomin on 23/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct Token: Codable {
  
  static var shared = Token(catalogKey: "", superKey: nil, userIsAuthorized: true)
  
  var catalogKey: String
  var superKey: String?
  
  var userIsAuthorized: Bool? = true
  
  enum CodingKeys: String, CodingKey {
    case catalogKey = "catalog_key"
    case superKey = "super_key"
  }
  
}
