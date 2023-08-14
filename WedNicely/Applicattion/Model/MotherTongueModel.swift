//
//  MotherTongueModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 03/08/23.
//

import Foundation


import Foundation

struct MotherTongueModel :Codable{
    let detail: String
    let result: [MotherTongueData]
}

struct MotherTongueData :Codable{
    let id: Int
    let name: String
    let icon: String
}
