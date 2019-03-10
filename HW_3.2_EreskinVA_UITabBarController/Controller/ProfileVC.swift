//
//  ProfileVC.swift
//  HW_3.2_EreskinVA_UITabBarController
//
//  Created by Vladimir Ereskin on 09/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var image: UIImageView!
    @IBOutlet var telefoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var skypeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let info = infoPerson {
            nameLabel.text = "\(info.surname) \(info.name) \(info.patronyc)"
            telefoneNumberLabel.text = info.telefoneNumber
            emailLabel.text = info.email
            skypeLabel.text = info.skype
            image.image = UIImage(named: "EVA")
        }
        
        image.layer.cornerRadius = image.bounds.width / 2
        image.layer.masksToBounds = true
        image.layer.borderWidth = 2
        image.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
}
