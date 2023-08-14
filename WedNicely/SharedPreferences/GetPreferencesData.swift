//
//  GetPreferencesData.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 04/08/23.
//

import Foundation


func getAccessToken() -> String{
    let preferences = UserDefaults.standard
    if preferences.string(forKey: SharedPreferences.access_token) != nil{
        let access_token = preferences.string(forKey: SharedPreferences.access_token)
        return access_token!
    } else {
        return ""
    }
}

func getPhoneNumberToken() -> String{
    let preferences = UserDefaults.standard
    if preferences.string(forKey: SharedPreferences.phone_number_token) != nil{
        let access_token = preferences.string(forKey: SharedPreferences.phone_number_token)
        return access_token!
    } else {
        return ""
    }
}

func getPhoneNumber() -> String{
    let preferences = UserDefaults.standard
    if preferences.string(forKey: SharedPreferences.phoneNumber) != nil{
        let phoneNumber = preferences.string(forKey: SharedPreferences.phoneNumber)
        return phoneNumber!
    } else {
        return ""
    }
}
