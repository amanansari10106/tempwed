//
//  PhoneAndOTpModelRequest.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 06/08/23.
//

import Foundation


struct PhoneOTPModelRequest: Encodable {
    let mobile: String
    let otp: String
}
