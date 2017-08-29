//
//  RAFourthVC.swift
//  RApps
//
//  Created by rogue on 2017/8/9.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import UIKit
import pop

class RAFourthVC: RABaseVC {

    override func loadViews() {
        super.loadViews()
        view.backgroundColor = .gray
        
        let btn = UIButton(frame: CGRect(x: (UIScreen.main.bounds.width - 200) / 2.0, y: 100, width: 200, height: 40))
        btn.backgroundColor = .orange
        btn.addTarget(self, action: #selector(animation1), for: .touchUpInside)
        view.addSubview(btn)
    }
    
    @objc private func animation1() {
    
        let popObject = POP
    
    }

}
