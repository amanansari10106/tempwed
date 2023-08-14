//
//  ProductViewModel.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 18/07/23.
//

import Foundation

final class ViewModelCus{
    var pro:Welcome?
    
    var eventHandler:((_ event:Event)->Void)? //data Binding Closer
//    func fetchData(){
//        self.eventHandler?(.loading)
//        APIManager.shared.request(
//            modelType: Welcome.self,
//            type:EndPointItems.get){
//                response in
//                switch response{
//                case .success(let products1):
//                    self.pro=products1
//                    self.eventHandler?(.dataLoaded)
//                case .failure(let error):
//                    self.eventHandler?(.error(error))
//                }
//
//            }
//    }
    
//    var eventHandlerAddProduct:((_ event:Event)->Void)? //data Binding Closer
//    func postData(parameters:AddProduct){
//        self.eventHandlerAddProduct?(.loading)
//        APIManager.shared.request(
//            modelType: AddProduct.self,
//            type: EndPointItems.post(product: parameters)){
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
extension ViewModelCus{
    enum Event {
        case loading
        case stopLoading
        case dataLoaded
        case error(_ error:Error?)
    }
}
