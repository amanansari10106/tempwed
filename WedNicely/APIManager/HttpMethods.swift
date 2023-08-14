//
//  EndpointType.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 30/07/23.
//

import Foundation


// This is all the HTTPMethods which the application is using 

enum HTTPMethods:String{
    case get = "GET"
    case post = "POST"
    case patch = "PATCH"
    case delete = "DELETE"
    case put = "PUT"
}
 

//protocol EndPointType{
//    var path:String  {get }
//    var baseUrl :String{get}
//    var url :URL? {get}
//    var method:HTTPMethods {get}
//    var body:Encodable? {get}
//    var header:[String:String]? { get }
//
//
//}


