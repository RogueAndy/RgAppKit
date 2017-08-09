//
//  RATabbarVC.swift
//  RApps
//
//  Created by rogue on 2017/8/9.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import UIKit

class RATabbarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstVC = RAFirstVC()
        let firstNC = RABaseNC(rootViewController: firstVC)
        firstNC.tabBarItem.title = "第一"
        firstNC.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(colorLiteralRed: 226/255.0, green: 14/255.0, blue: 33/255.0, alpha: 1)], for: .selected)
        firstNC.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(colorLiteralRed: 153/255.0, green: 153/255.0, blue: 153/255.0, alpha: 1)], for: .normal)
        firstNC.tabBarItem.image = UIImage(named: "tabBar_news")!.withRenderingMode(.alwaysOriginal)
        firstNC.tabBarItem.selectedImage = UIImage(named: "tabBar_news_select")!.withRenderingMode(.alwaysOriginal)
        
        let secondVC = RASecondVC()
        let secondNC = RABaseNC(rootViewController: secondVC)
        secondNC.tabBarItem.title = "第二"
        secondNC.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(colorLiteralRed: 226/255.0, green: 14/255.0, blue: 33/255.0, alpha: 1)], for: .selected)
        secondNC.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(colorLiteralRed: 153/255.0, green: 153/255.0, blue: 153/255.0, alpha: 1)], for: .normal)
        secondNC.tabBarItem.image = UIImage(named: "tabBar_zhengwu")!.withRenderingMode(.alwaysOriginal)
        secondNC.tabBarItem.selectedImage = UIImage(named: "tabBar_zhengwu_select")!.withRenderingMode(.alwaysOriginal)
        
        let thirdVC = RAThirdVC()
        let thirdNC = RABaseNC(rootViewController: thirdVC)
        thirdNC.tabBarItem.title = "第三"
        thirdNC.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(colorLiteralRed: 226/255.0, green: 14/255.0, blue: 33/255.0, alpha: 1)], for: .selected)
        thirdNC.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(colorLiteralRed: 153/255.0, green: 153/255.0, blue: 153/255.0, alpha: 1)], for: .normal)
        thirdNC.tabBarItem.image = UIImage(named: "tabBar_life")!.withRenderingMode(.alwaysOriginal)
        thirdNC.tabBarItem.selectedImage = UIImage(named: "tabBar_life_select")!.withRenderingMode(.alwaysOriginal)
        
        let fourthVC = RAFourthVC()
        let fourthNC = RABaseNC(rootViewController: fourthVC)
        fourthNC.tabBarItem.title = "第四"
        fourthNC.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(colorLiteralRed: 226/255.0, green: 14/255.0, blue: 33/255.0, alpha: 1)], for: .selected)
        fourthNC.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.init(colorLiteralRed: 153/255.0, green: 153/255.0, blue: 153/255.0, alpha: 1)], for: .normal)
        fourthNC.tabBarItem.image = UIImage(named: "tabBar_mine")!.withRenderingMode(.alwaysOriginal)
        fourthNC.tabBarItem.selectedImage = UIImage(named: "tabBar_mine_select")!.withRenderingMode(.alwaysOriginal)
        
        self.viewControllers = [firstNC, secondNC, thirdNC, fourthNC]
        
    }

}
