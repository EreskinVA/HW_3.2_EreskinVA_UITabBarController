//
//  AppDelegate.swift
//  HW_3.2_EreskinVA_UITabBarController
//
//  Created by Vladimir Ereskin on 08/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

var infoPerson: InfoPerson?

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        application.statusBarStyle = .lightContent
        
        getJSON()
        
        return true
    }

    func getJSON() {
        if let path = Bundle.main.path(forResource: "items", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path),
                                    options: .alwaysMapped)
                
                infoPerson = try JSONDecoder().decode(InfoPerson.self,
                                                       from: data)
                
            } catch let error {
                print(error)
            }
        }
    }
}

