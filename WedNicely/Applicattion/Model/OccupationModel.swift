//
//  OccupationModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 03/08/23.
//

import Foundation


struct OccupationModel :Codable{
    let detail: String
    let result: [OccupationData]
}

struct OccupationData :Codable{
    let id: Int
    let name: String
    let icon: String
}
