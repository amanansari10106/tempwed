//
//  CommunityModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 03/08/23.
//

import Foundation


import Foundation

struct CommunityModel :Codable{
    let detail: String
    let result: [CommunityData]
}

struct CommunityData :Codable{
    let id: Int
    let name: String
    let icon: String
}
