//
//  Extensions+URLRequest.swift
//  Sadovod
//
//  Created by Yura Istomin on 22/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

extension URLRequest {
  
  static func getRequest(forPath path: String, queryItems items: [String: String], method: RequestMethod) -> URLRequest {
   
    var urlComponents = URLComponents()
    urlComponents.scheme = Constants.scheme
    urlComponents.host = Constants.baseUrl
    urlComponents.path = Endpoint.urlPrefix + path
    
    urlComponents.queryItems = items.map { URLQueryItem(name: $0, value: $1) }
    
    guard let url = urlComponents.url else {
      fatalError("cannot create a url")
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = method.string
    return request
  }
  
}
