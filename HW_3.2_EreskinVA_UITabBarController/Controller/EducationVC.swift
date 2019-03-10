//
//  EducationVC.swift
//  HW_3.2_EreskinVA_UITabBarController
//
//  Created by Vladimir Ereskin on 09/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class EducationVC: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var educations = [Educatinon]()
    
    // MARK: - ... UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if infoPerson != nil {
            educations = infoPerson!.education
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "EducationSegue" else { return }
        
        let controller = segue.destination as! DetailPortfolioVC
        
        controller.imageId = educations[tableView.indexPathForSelectedRow!.row].imageId
        controller.titleNC = educations[tableView.indexPathForSelectedRow!.row].educationalInstitution
    }
}

extension EducationVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return educations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! EducationTVCell
        
        let education = educations[indexPath.row]
        
        cell.configure(period: education.date,
                       name: education.educationalInstitution,
                       specialization: education.specialization)

        return cell
    }
}
