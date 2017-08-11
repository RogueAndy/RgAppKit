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

enum RANetService {
    case WeatherWithArea(areaName: String)
    case Other
    
    func responseForWeatherWithAreaName(success: @escaping (_ resp: Any) -> Void) {
        
        switch self {
        case .WeatherWithArea(let areaName):
            let urlString = url + "weatherdetail/" + areaName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
            Alamofire.request(urlString).responseJSON(completionHandler: { (response: DataResponse) in
                
                let res = response.result.value
                success(res!)
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
        var url = "http://rogue.nodeweb.com/"
        print("wwwww")
        
    }
    
}
