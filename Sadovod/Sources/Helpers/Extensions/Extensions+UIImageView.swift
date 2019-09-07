//
//  Extensions+UIImageView.swift
//  Sadovod
//
//  Created by Yura Istomin on 07/09/2019.
//  Copyright © 2019 Yura Istomin. All rights reserved.
//

import UIKit

let imageCache = NSCache<NSString, UIImage>()

extension UIImageView {
  /// Loads an image from the urlString using cache
  /** Sets the image retrieved from the cache else loads the image from the urlString and stores it in the cache
   - parameters:
   - urlString: Image address string
   */
  func loadImage(withUrlString urlString: String) {
    
    // Try to load an image from the cache
    if let cachedImage = imageCache.object(forKey: urlString as NSString) {
      self.image = cachedImage
      return
    }
    
    // Get the image from the url
    let url = URL(string: urlString)
    URLSession.shared.dataTask(with: url!) { (data, response, error) in
      if error != nil {
        print(error!)
        return
      }
      
      // Store the image in the cache and set it as the imageView's image
      DispatchQueue.main.async {
        if let downloadedImage = UIImage(data: data!) {
          imageCache.setObject(downloadedImage, forKey: urlString as NSString)
          self.image = downloadedImage
        }
      }
      }.resume()
  }
}
