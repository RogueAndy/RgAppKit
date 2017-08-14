//
//  RAWeatherModel.swift
//  RApps
//
//  Created by rogue on 2017/8/11.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import ObjectMapper
import Foundation

class RADayModel: RABaseModel {
    
    var weatherType: Int = 0
    var windType: Int = 0
    var weather: String?
    var windDirect: String?
    var wind: String?
    var time: String?
    
    required init?(map: Map) {
        
        super.init(map: map)
    
    }
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        weatherType <- map["weatherType"]
        windType <- map["windType"]
        weather <- map["weather"]
        windDirect <- map["windDirect"]
        wind <- map["wind"]
        time <- map["time"]
        
    }
    
}

class RATimeModel: RABaseModel {

    var dawn: Array<Any>?
    var night: Array<Any>?
    var day: Array<Any>?
    
    required init?(map: Map) {
        
        super.init(map: map)
        
    }
    
    override func mapping(map: Map) {
        
        super.mapping(map: map)
        dawn <- map["dawn"]
        night <- map["night"]
        day <- map["day"]
        
    }
    
}

class RAWeatherModel: RABaseModel {

    var date: String?
    var info: RATimeModel?
    var week: String?
    var nongli: String?
    
    required init?(map: Map) {
        
        super.init(map: map)
    
    }
    
    override func mapping(map: Map) {
        
        super.mapping(map: map)
        date <- map["date"]
        info <- map["info"]
        week <- map["week"]
        nongli <- map["nongli"]
        
    }
    
}
