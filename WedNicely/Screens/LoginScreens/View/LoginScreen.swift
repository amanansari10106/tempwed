//
//  LoginScreen.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 17/07/23.
//

import SwiftUI
import Combine

struct LoginScreen: View {
    
    @State private var keyboardHeight: CGFloat = 0
    private var viewModel = AuthViewModel()
    @State private var isAPIResponseReceived = false
    @State private var phoneNumber: String = ""

    var body: some
    View {
        NavigationView{
            ZStack{
                VStack{
                    
                    if(isAPIResponseReceived){
                        NavigationLink(destination: VerificationScreen(), isActive: $isAPIResponseReceived) {
                            EmptyView()}
                    }
                    Image("frame").resizable().frame(maxWidth: .infinity).frame(height: 400)
                    Text( StringConstants.Strings.success_stories).bold().font(.system(size: 20)).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    CustomTextFieldForAll(textChanged: $phoneNumber,characterLimit: 10)
                    PurpleGradentColorButton(text:StringConstants.Strings.continue_text,height: 60,fullWidth: .infinity).onTapGesture {
                        
                        if(phoneNumber.count==10){
                            viewModel.sendOTP(phoneNo: phoneNumber)
                        }else{
                            print("InValid Number")
                        }
                        
                    }
                    
                    Spacer()
                }
                .padding(.bottom, keyboardHeight)
                .onReceive(Publishers.keyboardHeight) { keyboardHeight in
                    self.keyboardHeight = keyboardHeight
                }
                .animation(.easeOut(duration: 0.25))
                .onAppear{
                    configuration()
                }
                
            }
        
        }.navigationBarBackButtonHidden(true)
    }
}



extension LoginScreen{
    func configuration(){
        observeIvent()
    }

    func observeIvent(){
        viewModel.sendOTPObserver = {[self] event in
            
            switch event{
            case .loading:
                print("Data Loading ...")
            case .stopLoading:
                print("Stop Loading ...")
            case .dataLoaded:
                print("Data Loaded ...")
                isAPIResponseReceived=true
                
                savePhoneNumber(phoneNumber: phoneNumber)
                savePhoneNumberToken(phone_number_token: self.viewModel.sendOTPData?.result ?? "")
                

                print(self.viewModel.sendOTPData?.result)

            case .error(let error):
                print(error ?? "error")
            }
        }
    }
}



struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }

}
