//
//  AlamoImage.swift
//  Peticiones de red
//
//  Created by Diego Moreno on 12/12/22.
//

import UIKit
import Alamofire
import RxAlamofire
import RxSwift

class AlamoImage : UIImageView {
    func loadImageFromAlamo(from url : URL) {
        requestData(.get, url)
            .observeOn(MainScheduler.instance)
            .subscribe{ self.image = UIImage(data: $0.1) }
    }
}
