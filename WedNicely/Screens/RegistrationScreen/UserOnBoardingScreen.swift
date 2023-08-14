//
//  UserOnBoardingScreen.swift
//  WedNicely
//
//  Created  S Vijay Kumar on 16/07/23.
//

import SwiftUI

struct UserOnBoardingScreen: View {
    @State private var currentPage: RegistrationPage = .firstNameLastNameScreen
    @EnvironmentObject var userData: RegistrationPageData
    @State private var progress :Float=0.0
//    @State private var firstNameLastNameScreenVisibility = true
//    @State private var genderScreenVisibility :Bool=false
//    @State private var dOBVisibility :Bool=false
//    @State private var ReligionVisibility :Bool=false
//    @State private var communityAndReligionVisibility :Bool=false
//    @State private var currentlyLiveVisibility :Bool=false
//    @State private var heightVisibility :Bool=false
//    @State private var occupationVisibility :Bool=false
//    @State private var eduucationVisibility :Bool=false
//    @State private var interestsVisibility :Bool=false
    var body: some View {
        VStack{
            HStack{
                Image("back_button")
                    .resizable()
                    .frame(width: 30,height: 30).padding(20).onTapGesture {
                        goToPreviousPage()
                        progress = progress - 0.1
                    }
                Spacer()
            }
            ProgressView(value: progress)
                .progressViewStyle(CustomProgressViewStyle(activeColor:ColorConstants.Colors.PURPLE_COLOR_Dark, inActiveColor: Color.white)) // Use the custom style with your desired color
                        .frame(height: 20)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
            NavigationView{
                VStack {
                                if currentPage == .firstNameLastNameScreen {
                                    FirstAndLastNameScreen1(
                                        
                    currentPage: $currentPage, progress: $progress).environmentObject(userData)
                                } else if currentPage == .genderScreen {
                                    GenderScreen2(currentPage: $currentPage, progress: $progress)
                                } else if currentPage == .dOBScreen {
                                    DateOfBithScreen5(currentPage: $currentPage, progress: $progress)
                                }else if currentPage == .communityAndReligionScreen{
                                    CultureAndFaithScreen6(
                                        currentPage: $currentPage, progress: $progress
                                    )
                                }

                            }
            }
            Spacer()
        }
    }
    func goToPreviousPage() {
        switch currentPage {
             case .firstNameLastNameScreen:
                 // Already on the first page, no need to go back
                 break
             case .genderScreen, .dOBScreen:
                 currentPage = RegistrationPage(rawValue: currentPage.rawValue - 1) ?? .firstNameLastNameScreen
        case .communityAndReligionScreen:
            currentPage = RegistrationPage(rawValue: currentPage.rawValue - 1) ?? .genderScreen
        case .currentlyLiveScreen:
            currentPage = RegistrationPage(rawValue: currentPage.rawValue - 1) ?? .communityAndReligionScreen
        case .heightScreen:
            currentPage = RegistrationPage(rawValue: currentPage.rawValue - 1) ?? .currentlyLiveScreen
        case .occupationScreen:
            currentPage = RegistrationPage(rawValue: currentPage.rawValue - 1) ?? .heightScreen
        case .eduucationScreen:
            currentPage = RegistrationPage(rawValue: currentPage.rawValue - 1) ?? .occupationScreen
        case .interests:
            currentPage = RegistrationPage(rawValue: currentPage.rawValue - 1) ?? .eduucationScreen
        case .photoUploadScreen:
            currentPage = RegistrationPage(rawValue: currentPage.rawValue - 1) ?? .interests
        }
   }
}



struct UserOnBoardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        let previewRegistrationPageData = RegistrationPageData()
        previewRegistrationPageData.gender = Set(["Male"]) // Set the desired gender for preview
        
        return UserOnBoardingScreen().environmentObject(previewRegistrationPageData)
    }
}
