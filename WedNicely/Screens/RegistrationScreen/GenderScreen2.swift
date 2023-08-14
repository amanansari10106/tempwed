//
//  GenderScreen2.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 06/08/23.
//

import SwiftUI

struct GenderScreen2: View {
    @Binding var currentPage: RegistrationPage
    @Binding var progress: Float
    @State private var selectedChips: Set<String> = []
    @State private var activateButton : Bool = false
    @EnvironmentObject var registrationPageData: RegistrationPageData

    var body: some View {
        VStack{
            HStack{
                Image("person_icon").resizable().frame(width: 60,height: 60)
                Spacer()

            }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            HStack{
                Text(StringConstants.Strings.what_is_your_full_name).font(.system(size: 24))
                    .bold()
                Spacer()

            }.padding(20)
            VStack{
                ChipGroup(selectedChips:$registrationPageData.gender,chips: ["Male","Female"], allowMultipleSelection: false)
                    .frame(width: .infinity,height:0)

            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 0))
            .onChange(of: registrationPageData.gender) { selectedChips in
                        // Handle the selected chips here
                if(selectedChips.isEmpty){
                    
                }else{
                    print(selectedChips)
                    activateButton = true
                }
                    }
            HStack{
                Spacer()
                if(activateButton){
                    NextButtonActive().onTapGesture {
                        print("gender page scree")
                        progress=0.2
                        currentPage = .dOBScreen
                        print(currentPage)
                        
                    }
                }else{
                    NextButtonInActive().onTapGesture {
                        
                    }
                }
            }.padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
            Spacer()

        }
        
    }
}

struct GenderScreen2_Previews: PreviewProvider {
    static var previews: some View {
        let previewRegistrationPageData = RegistrationPageData()
        previewRegistrationPageData.gender = Set(["Male"]) // Set the desired gender for preview
        
        return GenderScreen2(
            currentPage: Binding.constant(.firstNameLastNameScreen),
            progress: Binding.constant(0.33)
        ).environmentObject(previewRegistrationPageData)
    }
}
