//
//  RAFirstVC.swift
//  RApps
//
//  Created by rogue on 2017/8/9.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import UIKit
import ObjectMapper

class RAFirstVC: RABaseVC {

    override func loadViews() {
        RANetService.responseForWeatherWithAreaName(.WeatherWithArea(areaName: "重庆"))(success: {(resp: Any) in

            let respDictionary = resp as! [String : Any]
            let maps = Mapper<RAWeatherModel>().mapArray(JSONObject: respDictionary["weather"] as! Array<Any>)! as Array<RAWeatherModel>
            print(maps.first!.info!.day ?? "hehe")
        })
    }
    
    private func xunhuanDictionary(dictionary: [String: Any?]) {
        
        for key in dictionary.keys {
            print("---- " + key + " ------")
        }
    }

}
