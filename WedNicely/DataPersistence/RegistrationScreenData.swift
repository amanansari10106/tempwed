//
//  HoldRegistratinonScreenData.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 10/08/23.
//

// This File is made for only persist the data during the lifecycle of the screen
// it does not store the data it just persist the data

import Foundation
class RegistrationPageData: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var dob: Date = Date()
    @Published var gender: Set<String> = []
    @Published var religion:Set<String> = []
    @Published var community:Set<String> = []
    @Published var maritalStatus:Set<String> = []
    @Published  var currentlyLive:String=""
    @Published  var homeTown:String=""
    @Published  var height:String=""
    @Published  var occupation:String=""
    @Published  var education:String=""
    @Published  var interests:Set<String> = []
    
}
