//
//  ValidateOTPModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 04/08/23.
//

import Foundation
struct ValidateOTPModelResponse: Codable {
    let detail: String
    let result: ValidateOTPData
}

struct ValidateOTPData: Codable {
    let refresh, access: String
}
