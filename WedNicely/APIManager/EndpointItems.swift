//
//  EndpointItems.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 01/08/23.
//

import Foundation
//
//enum EndPointItems{
//    case get
//    case post(product :AddProduct)
//
//}
////https://dummyjson.com/products
//extension EndPointItems :EndPointType{
//    var method: HTTPMethods {
//        switch self{
//        case .get:
//            return .get
//        case .post:
//            return .post
//        }
//    }
//    var body: Encodable?{
//        switch self{
//        case .get:
//            return nil
//        case .post(product: var product):
//            return product
//        }
//    }
//
//
//    var header: [String : String]? {
//
//        switch self{
//        case .get:
//            return ["Content-Type": "application/json"]
//        case .post:
//            return ["Content-Type": "application/json"]
//        }
//
//
//
//    }
//
//
//    var path: String {
//        switch self{
//        case .get:
//            return "master/height/"
//        case .post:
//            return "products/add"
//        }
//    }
//
//    var baseUrl: String {
//        return "https://api.matrimony.wednicely.com/api/master/height/"
//    }
//
//    var url: URL? {
//        switch self{
//        case .get:
//            return URL(string: "\(baseUrl)")
//        case .post:
//            return URL(string: "\(baseUrl)")
//
//
//        }
//
//    }
//
//}


// This is data which is required to make an api call according to the api call and api url
struct EndPointItems{
    var requestUrl:URL?
    var requestHeader:[String:String]
    var requestMethod:HTTPMethods
    
    var requestBody:Encodable?

    init(url:URL?,header:[String:String],requestMethod1:HTTPMethods,body:Encodable?){
        requestUrl=url
        requestHeader=header
        requestMethod=requestMethod1
        requestBody=body
        
    }
}
