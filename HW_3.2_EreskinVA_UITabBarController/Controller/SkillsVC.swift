//
//  SkillsVC.swift
//  HW_3.2_EreskinVA_UITabBarController
//
//  Created by Vladimir Ereskin on 09/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class SkillsVC: UIViewController {

    var skills = [Skills]()
    
    @IBOutlet var tableView: UITableView!
    
    // MARK: - ... UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if infoPerson != nil {
            skills = infoPerson!.skills
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
}

extension SkillsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return skills.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SkillsTVCell
        
        let skill = skills[indexPath.row]
        
        cell.configure(name: skill.name,
                       percent: skill.percent)
        
        return cell
    }
}
