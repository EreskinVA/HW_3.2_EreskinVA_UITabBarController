//
//  EducationTVCell.swift
//  HW_3.2_EreskinVA_UITabBarController
//
//  Created by Vladimir Ereskin on 09/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class EducationTVCell: UITableViewCell {

    @IBOutlet var view: UIView!
    @IBOutlet var periodLabel: UILabel!
    @IBOutlet var nameInstitution: UILabel!
    @IBOutlet var specialization: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        view.layer.cornerRadius = 8
        
        periodLabel.layer.cornerRadius = 8
        periodLabel.layer.masksToBounds = true
    }
    
    func configure(period: String, name: String, specialization: String) {
        self.periodLabel.text = period
        self.nameInstitution.text = name
        self.specialization.text = specialization
    }
}
