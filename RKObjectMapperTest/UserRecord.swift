//
//  ClassRecordModal.swift
//  RKObjectMapperTest
//
//  Created by User on 4/19/16.
//  Copyright © 2016 User. All rights reserved.
//

import Foundation
import ObjectMapper
import AlamofireObjectMapper



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