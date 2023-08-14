//
//  EducationModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 03/08/23.
//

import Foundation


import Foundation

struct EducationModel:Codable {
    let detail: String
    let result: [EduactionData]
}

struct EduactionData :Codable{
    let id: Int
    let name: String
    let icon: String
}
