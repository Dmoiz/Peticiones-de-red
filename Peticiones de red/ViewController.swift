//
//  ViewController.swift
//  Peticiones de red
//
//  Created by Diego Moreno on 12/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ivData: DataImage!
    @IBOutlet weak var ivUrlSession: URLsessionImage!
    @IBOutlet weak var ivAlamo: AlamoImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ivData.loadImageFromData(from: URL(string: "https://picsum.photos/200")!)
        ivUrlSession.loadImageFromSession(from: URL(string: "https://picsum.photos/200")!)
        ivAlamo.loadImageFromAlamo(from: URL(string: "https://picsum.photos/200")!)
    }
}
