//
//  Extensions+URLSessionDataTask.swift
//  Sadovod
//
//  Created by Yura Istomin on 22/08/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import Foundation

extension URLSessionDataTask {
  
  static func createDataTask(forPath path: String, queryItems items: [String: String], method: RequestMethod, completion: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
    
    let request = URLRequest.getRequest(forPath: path, queryItems: items, method: method)
    let dataTask = URLSession(configuration: .default).dataTask(with: request, completionHandler: completion)
    return dataTask
  }
}
