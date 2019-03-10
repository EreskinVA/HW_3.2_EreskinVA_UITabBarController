//
//  InfoPerson.swift
//  HW_3.2_EreskinVA_UITabBarController
//
//  Created by Vladimir Ereskin on 10/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

struct InfoPerson: Codable {
    let name: String
    let surname: String
    let patronyc: String
    let telefoneNumber: String
    let email: String
    let skype: String
    let imageId: String
    let desiredPosition: String
    let education: [Educatinon]
    let skills: [Skills]
    let works: [Works]
    let portfolio: [Portfolio]
}
