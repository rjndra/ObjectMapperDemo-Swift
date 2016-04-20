//
//  ViewController.swift
//  RKObjectMapperTest
//
//  Created by Rajendra on 4/19/16.
// No copyright. Demo for Helping use with  AlamofireObject from https://github.com/tristanhimmelman/AlamofireObjectMapper  ObjectMapper and https://github.com/Hearst-DD/ObjectMapper
//

import Foundation
import ObjectMapper

class UserRecord: Mappable {
    
     var name:String!
     var fullname:String!
     var ownerLogin:String!
     var ownerId: Int!
    
    
    required init?(_ map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        name        <- map["name"]
        fullname    <- map["full_name"]
        ownerLogin  <- map["owner.login"]
        ownerId     <- map["owner.id"]
    }
}