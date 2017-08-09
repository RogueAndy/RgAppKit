//
//  RABaseView.swift
//  RApps
//
//  Created by rogue on 2017/8/9.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import UIKit

class RABaseView: UIView {

    override convenience init(frame: CGRect) {
        self.init(frame: frame)
        
        self.loadDataBeforeViews()
        self.loadViews()
        self.loadDataAfterViews()
        self.loadLayouts()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func loadDataBeforeViews() {}
    
    public func loadViews() {}
    
    public func loadLayouts() {}
    
    public func loadDataAfterViews() {}

}
