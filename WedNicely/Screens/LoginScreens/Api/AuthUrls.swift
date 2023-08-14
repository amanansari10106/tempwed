//
//  AuthUrls.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 04/08/23.
//

import Foundation


class AuthAPIUrls {
    let SEND_OTP:String = baseUrl+"user/send_otp/?mobile="
    let VERIFY_OTP:String = baseUrl+"user/validate_otp/" 
}
