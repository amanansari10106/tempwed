////
////  CommonMasterModel.swift
////  WedNicely
////
////  Created by S Vijay Kumar on 30/07/23.
////
//
//
import Foundation


struct CommonMasterHeightModel :Codable{
    let detail: String
    let result: [HeightData]
}

// MARK: - Result
struct HeightData :Codable{
    let id,height: Int
    let name, icon: String
}
