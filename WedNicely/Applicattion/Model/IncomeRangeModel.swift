//
//  IncomeRangeModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 03/08/23.
//

import Foundation


import Foundation

struct IncomeRangeModel : Codable{
    let detail: String
    let result: [IncomeData]
}

// MARK: - Result
struct IncomeData : Codable{
    let id: Int
    let name, incomeFrom, incomeTo: String
    let icon: String
}


