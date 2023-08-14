//
//  ReligionModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 03/08/23.
//

import Foundation


import Foundation

struct ReligionModel :Codable{
    let detail: String
    let result: [ReligionData]
}

struct ReligionData :Codable{
    let id: Int
    let name: String
    let icon: String
}
