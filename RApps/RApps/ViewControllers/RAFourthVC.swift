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

    private var fullSizeLayer: CALayer!
    
    override func loadViews() {
        super.loadViews()
        view.backgroundColor = .gray
        
        let btn = UIButton(frame: CGRect(x: (UIScreen.main.bounds.width - 100) / 2.0, y: 100, width: 100, height: 35))
        btn.setTitle("放大", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.addTarget(self, action: #selector(animation1), for: .touchUpInside)
        view.addSubview(btn)
        
        let scale = UIButton(frame: CGRect(x: (UIScreen.main.bounds.width - 100) / 2.0, y: 150, width: 100, height: 35))
        scale.setTitle("缩小", for: .normal)
        scale.setTitleColor(.black, for: .normal)
        scale.addTarget(self, action: #selector(animation2), for: .touchUpInside)
        view.addSubview(scale)
        
        fullSizeLayer = CALayer()
        fullSizeLayer.frame = CGRect(x: (UIScreen.main.bounds.width - 200) / 2.0, y: 200, width: 40, height: 40)
        fullSizeLayer.backgroundColor = UIColor.green.cgColor
        view.layer.addSublayer(fullSizeLayer)
        
    }
    
    @objc private func animation1() {
        
        let spring_animation = POPSpringAnimation(propertyNamed: kPOPLayerSize)
        spring_animation?.springBounciness = 19
        spring_animation?.toValue = NSValue(cgSize: CGSize(width: 80, height: 80))
        fullSizeLayer.pop_add(spring_animation, forKey: "size")
    
    }
    
    @objc private func animation2() {
    
        let spring_animation = POPSpringAnimation(propertyNamed: kPOPLayerSize)
        spring_animation?.springBounciness = 20
        spring_animation?.toValue = NSValue(cgSize: CGSize(width: 40, height: 40))
        fullSizeLayer.pop_add(spring_animation, forKey: "size")
    
    }

}
