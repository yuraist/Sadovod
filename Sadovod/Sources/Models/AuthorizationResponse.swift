//
//  AuthorizationResponse.swift
//  Sadovod
//
//  Created by Yura Istomin on 25/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

struct AuthorizationResponse: Codable {
  var status: Bool
  var token: String
  var type: String
  var key: String
}
