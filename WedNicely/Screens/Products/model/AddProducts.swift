//
//  AddProducts.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 30/07/23.
//

import Foundation

struct AddProduct :Codable{
    let title :String
}
struct AddProductResponse:Decodable{
    let title :String
    let id :Int

}


