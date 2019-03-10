//
//  PortfolioCVCell.swift
//  HW_3.2_EreskinVA_UITabBarController
//
//  Created by Vladimir Ereskin on 09/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class PortfolioCVCell: UICollectionViewCell {
    
    @IBOutlet var view: UIView!
    @IBOutlet var image: UIImageView!
    @IBOutlet var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        view.layer.cornerRadius = 8
    }

    func configure (name: String, imageId: String) {
        self.name.text = name
        self.image.image = UIImage(named: imageId)
    }
    
}
