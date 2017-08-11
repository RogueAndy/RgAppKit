//
//  RAWeatherModel.swift
//  RApps
//
//  Created by rogue on 2017/8/11.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import ObjectMapper

class RAWeatherModel: RABaseModel {

    var id: String?
    var m: String?
    var op: String?
    var p: String?
    
    override func mapping(map: Map) {
        
        id <- map["id"]
        m <- map["m"]
        op <- map["op"]
        p <- map["p"]
        
    }
    
}
