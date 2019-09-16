//
//  Token.swift
//  Sadovod
//
//  Created by Yura Istomin on 23/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct Token: Codable {
  
  static var shared = Token(catalogKey: "", superKey: nil, userIsAuthorized: true) {
    didSet {
      Token.saveToken()
    }
  }
  
  var catalogKey: String
  var superKey: String?
  
  var userIsAuthorized: Bool? = true
  
  enum CodingKeys: String, CodingKey {
    case catalogKey = "catalog_key"
    case superKey = "super_key"
  }
  
  static func getStoredToken() -> Token? {
    if let tokenData = UserDefaults.standard.value(forKey: Constants.tokenStoreKey) as? Data {
      if let token = try? JSONDecoder().decode(Token.self, from: tokenData) {
        return token
      }
    }
    
    return nil
  }
 
  static func saveToken() {
    if let encodedToken = try? JSONEncoder().encode(Token.shared) {
      UserDefaults.standard.set(encodedToken, forKey: Constants.tokenStoreKey)
    }
  }
}
