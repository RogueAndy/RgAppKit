//
//  RAFirstVC.swift
//  RApps
//
//  Created by rogue on 2017/8/9.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import UIKit

class RAFirstVC: RABaseVC {

    override func loadViews() {
        RANetService.responseForWeatherWithAreaName(.WeatherWithArea(areaName: "重庆"))(success: {(resp: Any) in
            print(resp)
        })
    }

}
