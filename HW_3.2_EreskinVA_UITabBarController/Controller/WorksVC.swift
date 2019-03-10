//
//  WorksVC.swift
//  HW_3.2_EreskinVA_UITabBarController
//
//  Created by Vladimir Ereskin on 09/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class WorksVC: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var works = [Works]()
    
    // MARK: - ... UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if infoPerson != nil {
            works = infoPerson!.works
        }

    }
}

extension WorksVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return works.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! WorksTVCell
        
        let work = works[indexPath.row]
        
        cell.configure(name: work.name,
                       period: work.period,
                       position: work.position,
                       functions: work.functions)
        
        return cell
    }
}
