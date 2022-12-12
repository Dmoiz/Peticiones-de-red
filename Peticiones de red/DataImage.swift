//
//  DataImage.swift
//  Peticiones de red
//
//  Created by Diego Moreno on 12/12/22.
//

import UIKit

class DataImage : UIImageView {
    func getImageData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
          URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
       }
    
       func loadImageFromData(from url: URL) {
          getImageData(from: url) {
             data, response, error in
             guard let data = data, error == nil else { return }
             DispatchQueue.main.async() { [weak self] in
                self?.image = UIImage(data: data)
             }
          }
       }
}
