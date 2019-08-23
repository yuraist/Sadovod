//
//  APIClient.swift
//  Sadovod
//
//  Created by Yura Istomin on 22/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

class APIClient {
  
  static let shared = APIClient()
  
}

extension APIClient {
  
  func checkToken(catalogKey: String, superKey: String = "", completion: @escaping ((Result<Token, ServerError>) -> Void)) {
    let queryItems = ["catalog_key": catalogKey, "super_key": superKey]
    
    URLSessionDataTask.createDataTask(forPath: Endpoint.checkToken, queryItems: queryItems) { (data, _, error) in
      if let error = error {
        completion(.failure(ServerError(message: error.localizedDescription)))
        return
      }
      
      guard let data = data else {
        completion(.failure(ServerError(message: "No data in response")))
        return
      }
      
      do {
        let token = try JSONDecoder().decode(Token.self, from: data)
        completion(.success(token))
        return
      } catch {
        print(error)
        completion(.failure(ServerError(message: error.localizedDescription)))
        return
      }
    }.resume()
  }
  
}
