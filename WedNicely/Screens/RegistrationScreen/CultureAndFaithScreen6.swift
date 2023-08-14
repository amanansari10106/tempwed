//
//  CultureAndFaithScreen6.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 10/08/23.
//

import SwiftUI

struct CultureAndFaithScreen6: View {
   
    @State private var selectedChips: Set<String> = []
    @State  var religionChips = Array<String>()

    @State private var activateButton : Bool = false
    @EnvironmentObject var registrationPageData: RegistrationPageData
    @Binding var currentPage: RegistrationPage
    @Binding var progress: Float

     var commonMasterViewModel = CommonMasterViewModel()
    @State private var isAPIResponseReceived = false
    
    var body: some View {
        VStack{
       
            HStack{
                Image("culture_and_faith").resizable().frame(width: 80,height: 60)
                Spacer()

            }
            HStack{
                Text(StringConstants.Strings.culture_and_faith).font(.system(size: 24))
                    .bold()
                Spacer()

            }.padding(20)
            ChipGroup(selectedChips:$registrationPageData.gender,chips:religionChips, allowMultipleSelection: false)
            .padding(EdgeInsets(top: 0, leading: 9, bottom: 0, trailing:9))
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
                    print("gender page screen")
                    progress=0.1
                    currentPage = .genderScreen
                    print(currentPage)
                }
            }else{
                NextButtonInActive().onTapGesture {
                    
                }
            }
          
        }
           Spacer()
        }.onAppear{
            configuration()
        }
        
        
    }
}


extension CultureAndFaithScreen6{
    func configuration(){
        initialApiCalls()
        observeIvent()
    }
    func initialApiCalls(){
        commonMasterViewModel.fetchReligion(searchData: nil)
    }

    func observeIvent(){
        commonMasterViewModel.religionObserver = {[self] event in
            
            switch event{
            case .loading:
                print("Data Loading ...")
            case .stopLoading:
                print("Stop Loading ...")
            case .dataLoaded:
                print("Data Loaded ...")
                isAPIResponseReceived=true
                for element in self.commonMasterViewModel.religionData?.result ?? [] {
                    religionChips.append(element.name)
                }
                
                print(self.commonMasterViewModel.religionData?.result[0].name)

            case .error(let error):
                print(error ?? "error")
            }
        }
    }
}

struct CultureAndFaithScreen6_Previews: PreviewProvider {
    static var previews: some View {
        let previewRegistrationPageData = RegistrationPageData()
        return CultureAndFaithScreen6(
            currentPage: Binding.constant(.communityAndReligionScreen),
            progress: Binding.constant(0.33)
        )
        .environmentObject(previewRegistrationPageData)
    }
}
