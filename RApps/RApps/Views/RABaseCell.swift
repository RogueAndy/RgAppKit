//
//  RABaseCell.swift
//  RApps
//
//  Created by rogue on 2017/8/9.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import UIKit

class RABaseCell: UITableViewCell {

    override convenience init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        self.init(style: style, reuseIdentifier: reuseIdentifier)
        
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
