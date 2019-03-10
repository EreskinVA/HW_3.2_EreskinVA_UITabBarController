//
//  DetailPortfolioVC.swift
//  HW_3.2_EreskinVA_UITabBarController
//
//  Created by Vladimir Ereskin on 10/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class DetailPortfolioVC: UIViewController {

    var imageId: String?
    var titleNC: String?
    
    @IBOutlet var image: UIImageView!
    
    // MARK: - ... UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.layer.cornerRadius = 8
        image.layer.masksToBounds = true

        guard let imageId = imageId else { return }
        
        image.image = UIImage(named: imageId)
        title = titleNC
    }
}
