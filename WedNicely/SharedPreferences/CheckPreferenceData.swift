//
//  CheckPreferenceData.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 04/08/23.
//

import Foundation


func didSave(preferences: UserDefaults){
    let didSave = preferences.synchronize()
    if !didSave{
        // Couldn't Save
        print("Preferences could not be saved!")
    }
}
