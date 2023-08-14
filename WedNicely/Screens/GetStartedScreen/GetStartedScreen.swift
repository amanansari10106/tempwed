//
//  GetStartedScreen.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 16/07/23.
//

import SwiftUI

struct GetStartedScreen: View {
    private var viewModel = CommonMasterViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("get_started_bg").resizable()
                    .ignoresSafeArea()
                VStack{
                    Image("datenicely_logo")
                    Spacer()
                    Text(StringConstants.Strings.serious_dating_only).foregroundColor(Color.white).font(.system(size: 30)).fontWeight(.bold).padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0)).onTapGesture {
                        print("Button is Tapped")
                        configuration()
                       
                        
                    }
                    Text(StringConstants.Strings.profiles_background_verified).foregroundColor(Color.white).font(.system(size: 15)).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                
            
                    NavigationLink(destination: LoginScreen(), label: {
                        RedGradentColorButton(text: StringConstants.Strings.join_dateNicely,height: 60,fullWidth: .infinity)
                 
                    }
                    
                    )
                 
                }
                
            }
        }
        
      
        
    }
    



}


extension GetStartedScreen{
    func configuration(){
        initViewModel()
        observeIvent()
    }
    func initViewModel(){
        viewModel.fetchEducation(searchData: nil)
        //viewModel.addProduct(parameters:AddProduct(title:"Vijay"))
    }
    func observeIvent(){
        viewModel.educationObserver = {[self] event in
            
            switch event{
            case .loading:
                print("Data Loading ...")
            case .stopLoading:
                print("Stop Loading ...")
            case .dataLoaded:
                print("Data Loaded ...")

                print(self.viewModel.educationData?.result[0].id)

            case .error(let error):
                print(error ?? "error")
            }
        }
//        viewModel.eventHandlerAddProduct={[self] event in
//            switch event{
//            case .loading:
//                print("Data Loading ...")
//            case .stopLoading:
//                print("Stop Loading ...")
//            case .dataLoaded:
//                print("Data Loaded ...")
//
//            case .error(let error):
//                print(error ?? "error")
//            }
//
//        }
    }
}

struct GetStartedScreen_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedScreen()
    }
}

