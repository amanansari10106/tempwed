//
//  SettleDownInModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 03/08/23.
//

import Foundation


import Foundation

struct SettleDownInModel :Codable{
    let detail: String
    let result: [SettleDownInData]
}

struct SettleDownInData :Codable{
    let id: Int
    let name: String
    let icon: String
}
