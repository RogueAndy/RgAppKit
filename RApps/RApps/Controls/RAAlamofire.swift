//
//  RAAlamofire.swift
//  RApps
//
//  Created by rogue on 2017/8/9.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import UIKit
import Alamofire

let url = "http://rogue.nodeweb.com/"

/// 天气接口
///
/// - WeatherWithArea: 天气详情接口 realtime isForeign pm25 life weather
/// - Other: 其他天气接口
enum RANetService {
    case WeatherWithArea(areaName: String)
    case Other
    
    func responseForWeatherWithAreaName(success: @escaping (_ resp: Any) -> Void) {
        
        switch self {
        case .WeatherWithArea(let areaName):
            let urlString = url + "weatherdetail/" + areaName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
            Alamofire.request(urlString).responseJSON(completionHandler: { (response: DataResponse) in
                
                let res = response.result.value as! String
                
                let jsonData:Data = res.data(using: .utf8)!
                let dictionary = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as! Dictionary<String, Any>
                let code = dictionary?["error_code"] as! Int
                if code == 0 {
                    success(dictionary?["result"] ?? NSNull())
                }
                
            })
            break
        default:
            print("no something")
            break
        }
    }
}

class RAAlamofire: NSObject {

    static func baseMethod() {
        let url = "-------http://rogue.nodeweb.com/"
        print(url)
        
    }
    
}
