//
//  CityModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 03/08/23.
//

import Foundation


import Foundation

struct CityModel :Codable{
    let detail: String
    let result: [CityData]
}

struct CityData:Codable{
    let id: Int
    let city,
        state,
        country,
        latitude,
        longitude: String
}


