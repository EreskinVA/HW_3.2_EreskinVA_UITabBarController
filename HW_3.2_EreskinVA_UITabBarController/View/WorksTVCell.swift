//
//  WorksTVCell.swift
//  HW_3.2_EreskinVA_UITabBarController
//
//  Created by Vladimir Ereskin on 09/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class WorksTVCell: UITableViewCell {

    @IBOutlet var view: UIView!
    @IBOutlet var periodLabel: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var position: UILabel!
    @IBOutlet var functions: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        view.layer.cornerRadius = 8
        
        periodLabel.layer.cornerRadius = 8
        periodLabel.layer.masksToBounds = true
    }

    func configure(name: String, period: String, position: String, functions: String) {
        self.name.text = name
        self.periodLabel.text = period
        self.position.text = position
        self.functions.text = functions
    }
}
