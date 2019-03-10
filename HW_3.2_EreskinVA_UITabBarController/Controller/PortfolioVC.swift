//
//  PortfolioVC.swift
//  HW_3.2_EreskinVA_UITabBarController
//
//  Created by Vladimir Ereskin on 09/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class PortfolioVC: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    var portfolio = [Portfolio]() {
        didSet {
            portfolio = portfolio.sorted(by: { $0.id < $1.id })
        }
    }
    
    // MARK: - ... UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if infoPerson != nil {
            portfolio = infoPerson!.portfolio
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "DetailSegue" else { return }
        
        let controller = segue.destination as! DetailPortfolioVC
        
        controller.imageId = portfolio[collectionView.indexPathsForSelectedItems!.first!.row].imageId
        controller.titleNC = portfolio[collectionView.indexPathsForSelectedItems!.first!.row].name
    }
}

extension PortfolioVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return portfolio.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PortfolioCVCell
        
        let portfolioSingle = portfolio[indexPath.row]
        
        cell.configure(name: portfolioSingle.name,
                       imageId: portfolioSingle.imageId)
        
        return cell
    }
    
    
}
