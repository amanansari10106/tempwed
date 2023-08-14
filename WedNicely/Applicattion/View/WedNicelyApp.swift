//
//  WedNicelyApp.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 15/07/23.
//

import SwiftUI

@main
struct WedNicelyApp: App {
    @StateObject private var registrationPageData = RegistrationPageData()

    var body: some Scene {
        WindowGroup {
            SplashScreenView().environmentObject(registrationPageData)
        }
    }
}

