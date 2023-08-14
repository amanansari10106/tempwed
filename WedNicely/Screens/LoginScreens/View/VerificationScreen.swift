//
//  VerificationScreen.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 17/07/23.
//

import SwiftUI

struct VerificationScreen: View {
    let authViewModel = AuthViewModel()
    @State private var allFieldsFilled = false
    @State private var otpValue = ""
    var body: some View {
        VStack{
            HStack{
                NavigationLink(destination: LoginScreen(), label: {
                    Image("back_button")

                })
                Text("OTP Verification")
                Spacer()
            }.padding(EdgeInsets(top: 20, leading: 20, bottom: 40, trailing: 0))
            VStack{
                Text("We have sent an verification code to")
                Text("+91 \(getPhoneNumber())")
                OTPTextField(numberOfFields: 6, allFieldsFilled: $allFieldsFilled, onFilled: { otpValue in
                                // This closure will be called when all fields are filled, and you'll get the entered OTP value
                                self.otpValue = otpValue
                            })
                
                HStack{
                    Spacer()
                    CoustomResendButton(resedText:"Resend SMS in 0 ",widthOfResendButton: 150, heightOfResendButton: 10)
                        .padding(EdgeInsets(top: 20, leading: 10, bottom: 10, trailing: 10))
                        .onTapGesture {
                            print("\(allFieldsFilled)  \(otpValue)")
                        }
                        
                }
              
      
            }
            
            Spacer()
                .navigationBarBackButtonHidden(true)
                .onChange(of: allFieldsFilled, perform: { newValue in
                    configuration()
                    authViewModel.validateOTP(data: PhoneOTPModelRequest(
                        mobile: getPhoneNumber(), otp: otpValue))
                })
               
                
        }
     
    }
    

}
extension VerificationScreen{

        func configuration(){
            observeIvent()
        }

        func observeIvent(){
            authViewModel.validateOTPObserver = {[self] event in
                
                switch event{
                case .loading:
                    print("Data Loading ...")
                case .stopLoading:
                    print("Stop Loading ...")
                case .dataLoaded:
                    print("Data Loaded ...")
                    
                
                        saveAccessToken(
                            access_token:(
                                self.authViewModel.validateOTPData?.result.access ?? ""),
                            refresh_token: self.authViewModel.validateOTPData?.result.refresh ?? "")
                        print(self.authViewModel.validateOTPData?.result.access)
                    

                case .error(let error):
                    print(error ?? "error")
                }
            }
        
    }

}
struct VerificationScreen_Previews: PreviewProvider {
    static var previews: some View {
        VerificationScreen()
    }
}
