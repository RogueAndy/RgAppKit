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
        /*
        RANetService.responseForWeatherWithAreaName(.WeatherWithArea(areaName: "重庆"))(success: {(resp: Any) in

            let respDictionary = resp as! [String : Any]
            let maps = Mapper<RAWeatherModel>().mapArray(JSONObject: respDictionary["weather"] as! Array<Any>)! as Array<RAWeatherModel>
            print(maps.first!.info!.day ?? "hehe")
        })
         **/
        
        super.loadViews()
        
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        btn.addTarget(self, action: #selector(gcd_group_notify), for: .touchUpInside)
        btn.backgroundColor = .orange
        btn.center = view.center
        view.addSubview(btn)
        
    }
    
    private func xunhuanDictionary(dictionary: [String: Any?]) {
        
        for key in dictionary.keys {
            print("---- " + key + " ------")
        }
    }
    
    @objc private func gcd_queue() {
    
        let queue = RATesTgcd()
        queue.gcd_queue()
    
    }
    
    @objc private func gcd_asyncQueue() {
    
        let queue = RATesTgcd()
        queue.gcd_asyncQueue()
        
    }
    
    @objc private func gcd_qos() {
        
        let queue = RATesTgcd()
        queue.gcd_qos()
        
    }
    
    @objc private func gcd_group_wait() {
        
        let queue = RATesTgcd()
        queue.gcd_group_wait()
        
    }

    @objc private func gcd_group_notify() {
        
        let queue = RATesTgcd()
        queue.gcd_group_notify()
        
    }
    
}
