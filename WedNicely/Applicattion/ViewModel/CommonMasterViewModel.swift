//
//  ProductViewModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 18/07/23.
//

import Foundation

final class CommonMasterViewModel{
    
    var HeightData:CommonMasterHeightModel?
    var heightObserver:((_ event:Event)->Void)? //data Binding Closer
    func fetchHeights(){
        self.heightObserver?(.loading)
        APIManager.shared.request(
            modelType: CommonMasterHeightModel.self,
            type:EndPointItems(url: URL(string:CommonMasterAPIUrls().HEIGHT),
                                header: ["Content-Type" : "application/json"],
                                requestMethod1: HTTPMethods.get, body: nil)){
                response in
                switch response{
                case .success(let data):
                    self.HeightData=data
                    self.heightObserver?(.dataLoaded)
                case .failure(let error):
                    self.heightObserver?(.error(error))
                }

            }
    }

    var interestsData:InterestModel?
    var interestsObserver:((_ event:Event)->Void)? //data Binding Closer
    func fetchinterests(){
        self.interestsObserver?(.loading)
        APIManager.shared.request(
            modelType: InterestModel.self,
            type:EndPointItems(url: URL(string: CommonMasterAPIUrls().HEIGHT),
                                header: ["Content-Type" : "application/json"],
                                requestMethod1: HTTPMethods.get, body: nil)){
                response in
                switch response{
                case .success(let data):
                    self.interestsData=data
                    self.interestsObserver?(.dataLoaded)
                case .failure(let error):
                    self.interestsObserver?(.error(error))
                }

            }
    }
    
    var communityData:CommunityModel?
    var communityObserver:((_ event:Event)->Void)? //data Binding Closer
    func fetchCommunity(searchData:String?){
        self.communityObserver?(.loading)
        APIManager.shared.request(
            modelType: CommunityModel.self,
            type:EndPointItems(url:URL(string: CommonMasterAPIUrls().COMMUNITY + (searchData ?? "")) ,
                                header: ["Content-Type" : "application/json"],
                                requestMethod1: HTTPMethods.get, body: nil)){
                response in
                switch response{
                case .success(let data):
                    self.communityData=data
                    self.communityObserver?(.dataLoaded)
                case .failure(let error):
                    self.communityObserver?(.error(error))
                }

            }
    }
    
    var religionData:ReligionModel?
    var religionObserver:((_ event:Event)->Void)? //data Binding Closer
    func fetchReligion(searchData:String?){
        self.religionObserver?(.loading)
        APIManager.shared.request(
            modelType: ReligionModel.self,
            type:EndPointItems(url:URL(string: CommonMasterAPIUrls().RELIGION + (searchData ?? "")) ,
                                header: ["Content-Type" : "application/json"],
                                requestMethod1: HTTPMethods.get, body: nil)){
                response in
                switch response{
                case .success(let data):
                    self.religionData=data
                    self.religionObserver?(.dataLoaded)
                case .failure(let error):
                    self.religionObserver?(.error(error))
                }

            }
    }
    
    var cityData:CityModel?
    var cityObserver:((_ event:Event)->Void)? //data Binding Closer
    func fetchCity(searchData:String?){
        self.cityObserver?(.loading)
        APIManager.shared.request(
            modelType: CityModel.self,
            type:EndPointItems(url:URL(string: CommonMasterAPIUrls().CITY + (searchData ?? "")) ,
                                header: ["Content-Type" : "application/json"],
                                requestMethod1: HTTPMethods.get, body: nil)){
                response in
                switch response{
                case .success(let data):
                    self.cityData=data
                    self.cityObserver?(.dataLoaded)
                case .failure(let error):
                    self.cityObserver?(.error(error))
                }

            }
    }
    
    
    var occupationData:OccupationModel?
    var occupationObserver:((_ event:Event)->Void)? //data Binding Closer
    func fetchOccupation(searchData:String?){
        self.occupationObserver?(.loading)
        APIManager.shared.request(
            modelType: OccupationModel.self,
            type:EndPointItems(url:URL(string: CommonMasterAPIUrls().OCCUPATION + (searchData ?? "")) ,
                                header: ["Content-Type" : "application/json"],
                                requestMethod1: HTTPMethods.get, body: nil)){
                response in
                switch response{
                case .success(let data):
                    self.occupationData=data
                    self.occupationObserver?(.dataLoaded)
                case .failure(let error):
                    self.occupationObserver?(.error(error))
                }

            }
    }
    
    var settleDownInData:SettleDownInModel?
    var settleDownInObserver:((_ event:Event)->Void)? //data Binding Closer
    func fetchSettleDownIn(searchData:String?){
        self.settleDownInObserver?(.loading)
        APIManager.shared.request(
            modelType: SettleDownInModel.self,
            type:EndPointItems(url:URL(string: CommonMasterAPIUrls().SETTLE_DOWN + (searchData ?? "")) ,
                                header: ["Content-Type" : "application/json"],
                                requestMethod1: HTTPMethods.get, body: nil)){
                response in
                switch response{
                case .success(let data):
                    self.settleDownInData=data
                    self.settleDownInObserver?(.dataLoaded)
                case .failure(let error):
                    self.settleDownInObserver?(.error(error))
                }

            }
    }
    
    
    var motherTongueData:MotherTongueModel?
    var motherTongueObserver:((_ event:Event)->Void)? //data Binding Closer
    func fetchMotherTongue(searchData:String?){
        self.motherTongueObserver?(.loading)
        APIManager.shared.request(
            modelType: MotherTongueModel.self,
            type:EndPointItems(url:URL(string: CommonMasterAPIUrls().MOTHER_TONGUE + (searchData ?? "")) ,
                                header: ["Content-Type" : "application/json"],
                                requestMethod1: HTTPMethods.get, body: nil)){
                response in
                switch response{
                case .success(let data):
                    self.motherTongueData=data
                    self.motherTongueObserver?(.dataLoaded)
                case .failure(let error):
                    self.motherTongueObserver?(.error(error))
                }

            }
    }
    
    var educationData:EducationModel?
    var educationObserver:((_ event:Event)->Void)? //data Binding Closer
    func fetchEducation(searchData:String?){
        self.educationObserver?(.loading)
        APIManager.shared.request(
            modelType: EducationModel.self,
            type:EndPointItems(url:URL(string: CommonMasterAPIUrls().HIGHEST_EDUCATION + (searchData ?? "")) ,
                                header: ["Content-Type" : "application/json"],
                                requestMethod1: HTTPMethods.get, body: nil)){
                response in
                switch response{
                case .success(let data):
                    self.educationData=data
                    self.educationObserver?(.dataLoaded)
                case .failure(let error):
                    self.educationObserver?(.error(error))
                }

            }
    }
//    var InComeRangeData:EducationModel?
//    var educationObserver:((_ event:Event)->Void)? //data Binding Closer
//    func fetchEducation(searchData:String?){
//        self.educationObserver?(.loading)
//        APIManager.shared.request(
//            modelType: EducationModel.self,
//            type:EndPointItems(url:URL(string: CommonMasterAPIUrls().HIGHEST_EDUCATION + (searchData ?? "")) ,
//                                header: ["Content-Type" : "application/json"],
//                                requestMethod1: HTTPMethods.get, body: nil)){
//                response in
//                switch response{
//                case .success(let data):
//                    self.educationData=data
//                    self.educationObserver?(.dataLoaded)
//                case .failure(let error):
//                    self.educationObserver?(.error(error))
//                }
//
//            }
//    }
//    var eventHandlerAddProduct:((_ event:Event)->Void)? //data Binding Closer
//    func postData(parameters:AddProduct){
//        self.eventHandlerAddProduct?(.loading)
//        APIManager.shared.request(
//            modelType: AddProduct.self,
//            type: EndPointItems.addProducts(product: parameters)){
//                response in
//                switch response{
//                case .success:
//                    self.eventHandlerAddProduct?(.dataLoaded)
//                case .failure(let error):
//                    self.eventHandlerAddProduct?(.error(error))
//                }
//            }
//    }

}
extension CommonMasterViewModel{
    enum Event {
        case loading
        case stopLoading
        case dataLoaded
        case error(_ error:Error?)
    }
}
