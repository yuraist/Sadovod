//
//  APIClient.swift
//  Sadovod
//
//  Created by Yura Istomin on 22/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

class APIClient {
  
  typealias CompletionHandler<T> = (Result<T, ServerError>) -> Void
  
  static let shared = APIClient()
  
  fileprivate func fetchEntity<T: Codable>(fromEndpoint endpoint: String, queryItems: [String: String], completion: @escaping CompletionHandler<T>) {
    URLSessionDataTask.createDataTask(forPath: endpoint, queryItems: queryItems) { (data, _, error) in
      if let error = error {
        completion(.failure(ServerError(message: error.localizedDescription)))
        return
      }
      
      guard let data = data else {
        completion(.failure(ServerError(message: "No data in resopnse")))
        return
      }
      
      do {
        let entity = try JSONDecoder().decode(T.self, from: data)
        completion(.success(entity))
      } catch {
        
        if let jsonObject = JSONSerializer.jsonObject(with: data), let message = jsonObject["message"] as? String {
          completion(.failure(ServerError(message: message)))
          return
        }
        
        completion(.failure(ServerError(message: error.localizedDescription)))
        return
      }
      }.resume()
  }
  
  fileprivate func fetchEntityList<T: Codable>(fromEndpoint endpoint: String, queryItems: [String: String], completion: @escaping CompletionHandler<[T]>) {
    URLSessionDataTask.createDataTask(forPath: endpoint, queryItems: queryItems) { (data, _, error) in
      if let error = error {
        completion(.failure(ServerError(message: error.localizedDescription)))
        return
      }
      
      guard let data = data else {
        completion(.failure(ServerError(message: "No data in resopnse")))
        return
      }
      
      do {
        let entity = try JSONDecoder().decode(EntityList<T>.self, from: data)
        completion(.success(entity.list))
      } catch {
        
        if let jsonObject = JSONSerializer.jsonObject(with: data), let message = jsonObject["message"] as? String {
          completion(.failure(ServerError(message: message)))
          return
        }
        
        completion(.failure(ServerError(message: error.localizedDescription)))
        return
      }
      }.resume()
  }
}

// MARK: - API calls

extension APIClient {
  
  // MARK: - User methods
  
  func checkToken(catalogKey: String, superKey: String = "", completion: @escaping CompletionHandler<Token>) {
    let queryItems = ["catalog_key": catalogKey, "super_key": superKey]
    fetchEntity(fromEndpoint: Endpoint.checkToken, queryItems: queryItems, completion: completion)
  }
  
  func authorize(login: String, password: String, completion: @escaping CompletionHandler<AuthorizationResponse>) {
    let queryItems = ["key": Token.shared.catalogKey, "login": login, "password": password, "appname": Constants.appName]
    fetchEntity(fromEndpoint: Endpoint.auth, queryItems: queryItems, completion: completion)
  }
  
  func fetchUserInfo(completion: @escaping CompletionHandler<UserInfoResponse>) {
    let queryItems = ["key": Token.shared.catalogKey, "appname": Constants.appName]
    fetchEntity(fromEndpoint: Endpoint.fetchUserInfo, queryItems: queryItems, completion: completion)
  }
  
  // MARK: - Catalog methods
  
  func fetchMainScreenProducts(ofCategory category: String, page: Int, completion: @escaping CompletionHandler<[Product]>) {
    let queryItems = ["token": Token.shared.catalogKey, "appname": Constants.appName, "cat": category, "page": "\(page)"]
    fetchEntityList(fromEndpoint: Endpoint.fetchProductsOfPopularCategory, queryItems: queryItems, completion: completion)
  }
  
  func fetchCategoryList(completion: @escaping CompletionHandler<[ProductCategory]>) {
    let queryItems = ["token": Token.shared.catalogKey, "appname": Constants.appName, "cat": "0"]
    fetchEntityList(fromEndpoint: Endpoint.categoryList, queryItems: queryItems, completion: completion)
  }
  
  func fetchCategoryTree(ofCategory category: String, completion: @escaping CompletionHandler<TreeCategoriesResponse>) {
    let queryItems = ["token": Token.shared.catalogKey, "appname": Constants.appName, "cat": category]
    fetchEntity(fromEndpoint: Endpoint.fetchCategoryTree, queryItems: queryItems, completion: completion)
  }
  
  func fetchProducts(ofCategory category: String, page: Int, options: String="", cost: String="", sort: String="", completion: @escaping CompletionHandler<[Product]>) {
    let queryItems = [
      "token": Token.shared.catalogKey,
      "appname": Constants.appName,
      "page": "\(page)",
      "o": options,
      "cost": cost,
      "sort": sort
    ]
    
    fetchEntityList(fromEndpoint: Endpoint.fetchProductsOfCategory, queryItems: queryItems, completion: completion)
  }
  
  func fetchProduct(_ product: String, completion: @escaping CompletionHandler<DetailProductResponse>) {
    let queryItems = ["token": Token.shared.catalogKey, "appname": Constants.appName, "product": product]
    fetchEntity(fromEndpoint: Endpoint.fetchProductInfo, queryItems: queryItems, completion: completion)
  }
}
