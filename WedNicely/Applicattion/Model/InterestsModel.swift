//
//  InterestsModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 03/08/23.
//

import Foundation
import Foundation

// MARK: - Welcome4
struct InterestModel :Codable{
    let detail: String
    let result: [InterestData]
}

// MARK: - Result
struct InterestData :Codable{
    let id: Int
    let name, iconUnicode: String
}
