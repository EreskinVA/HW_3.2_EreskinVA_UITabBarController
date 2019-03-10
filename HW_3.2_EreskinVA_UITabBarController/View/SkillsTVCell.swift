//
//  SkillsTVCell.swift
//  HW_3.2_EreskinVA_UITabBarController
//
//  Created by Vladimir Ereskin on 09/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class SkillsTVCell: UITableViewCell {

    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var view: UIView!
    @IBOutlet var name: UILabel!
    @IBOutlet var percent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        progressView.layer.cornerRadius = 7
        progressView.layer.masksToBounds = true
        
        view.layer.cornerRadius = 8
    }

    func configure(name: String, percent: Int) {
        self.name.text = name
        self.percent.text = "\(percent)%"
        
        progressView.setProgress(0, animated: false)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.progressView.setProgress(Float(percent) / 100, animated: true)
        }
    }
}
