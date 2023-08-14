//
//  SharedPreferences.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 18/07/23.
//

import Foundation
import SwiftUI



// This class is used to store the data local

let preference = UserDefaults.standard

class SharedPreferences{

        static let access_token:String = "access_token"
        static let refresh_token:String = "refresh_token"
        static let phone_number_token:String = "phone_token"
        static let isLoggedIn:String = "is_logged_in"
        static let phoneNumber:String = "phone_number"
        static let firstName:String = "first_name"
        static let lastName:String = "last_name"
    
    
    // Clearing UserDefaults!
        func clearUDM(){
            UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
            UserDefaults.standard.synchronize()
        }

    
}




