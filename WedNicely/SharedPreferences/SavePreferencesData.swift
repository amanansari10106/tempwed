//
//  SaveData.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 04/08/23.
//

import Foundation


func saveAccessToken(access_token: String, refresh_token: String){
    let preferences = UserDefaults.standard
    print("saveAccessToken : \(access_token)")
    preferences.set(access_token, forKey: SharedPreferences.access_token)
    preferences.set(refresh_token, forKey: SharedPreferences.refresh_token)
    // Checking the preference is saved or not
    didSave(preferences: preferences)
}

func savePhoneNumberToken(phone_number_token: String){
    let preferences = UserDefaults.standard
    print("saveAccessToken : \(phone_number_token)")
    preferences.set(phone_number_token, forKey: SharedPreferences.phone_number_token)
    // Checking the preference is saved or not
    didSave(preferences: preferences)
}

func savePhoneNumber(phoneNumber: String){
    let preferences = UserDefaults.standard
    print("saveAccessToken : \(phoneNumber)")
    preferences.set(phoneNumber, forKey: SharedPreferences.phoneNumber)
    // Checking the preference is saved or not
    didSave(preferences: preferences)
}
