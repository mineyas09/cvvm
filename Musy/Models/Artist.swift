//
//  TopArtits.swift
//  Musy
//
//  Created by Yasmine Naouar on 11/27/18.
//  Copyright © 2018 Yasmine Naouar. All rights reserved.
//

import Foundation
import ObjectMapper



class Artist: Mappable {
    var data:[data]?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        data <- map["data"]
       
    }
    
}
class data:Mappable{
    required init?(map: Map) {
            }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        picture <- map["picture_medium"]
    }
    
    var id:Int?
    var name:String?
    var picture:String?
}


