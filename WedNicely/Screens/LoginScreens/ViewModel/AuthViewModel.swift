//
//  AuthViewModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 04/08/23.
//

import Foundation


class AuthViewModel{
    var sendOTPData:SendOTPModelResponse?
    var sendOTPObserver:((_ event:Event)->Void)? //data Binding Closer
    func sendOTP(phoneNo:String){
        self.sendOTPObserver?(.loading)
        APIManager.shared.request(
            modelType: SendOTPModelResponse.self,
            type:EndPointItems(url: URL(string:AuthAPIUrls().SEND_OTP+phoneNo),
                                header: ["Content-Type" : "application/json"],
                                requestMethod1: HTTPMethods.get, body: nil)){
                response in
                switch response{
                case .success(let data):
                    self.sendOTPData=data
                    self.sendOTPObserver?(.dataLoaded)
                case .failure(let error):
                    self.sendOTPObserver?(.error(error))
                }

            }
    }
    
    var validateOTPData:ValidateOTPModelResponse?
    var validateOTPObserver:((_ event:Event)->Void)? //data Binding Closer
    func validateOTP(data:PhoneOTPModelRequest){
        self.validateOTPObserver?(.loading)
        do{
            let jsonData = try JSONEncoder().encode(data)
            
            APIManager.shared.request(
                modelType: ValidateOTPModelResponse.self,
                type:EndPointItems(url: URL(string:AuthAPIUrls().VERIFY_OTP),
                                   header: ["Content-Type" : "application/json",
                                            "Authorization": "key \(getPhoneNumberToken())"],
                                   requestMethod1: HTTPMethods.post, body: data)){
                                       response in
                                       switch response{
                                       case .success(let data):
                                           self.validateOTPData=data
                                           self.validateOTPObserver?(.dataLoaded)
                                       case .failure(let error):
                                           self.validateOTPObserver?(.error(error))
                                       }
                                       
                                   }
        }catch{
            self.validateOTPObserver?(.error(error))
        }
    }
}
extension AuthViewModel{
    enum Event {
        case loading
        case stopLoading
        case dataLoaded
        case error(_ error:Error?)
    }
}
