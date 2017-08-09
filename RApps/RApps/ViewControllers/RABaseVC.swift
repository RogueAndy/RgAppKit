//
//  RABaseVC.swift
//  RApps
//
//  Created by rogue on 2017/8/9.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import UIKit

class RABaseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false
        self.edgesForExtendedLayout = UIRectEdge(rawValue: 0)
        self.view.backgroundColor = .white
        
        self.loadDataBeforeViews()
        self.loadViews()
        self.loadDataAfterViews()
        self.loadLayouts()
    }

    public func loadDataBeforeViews() {}
    
    public func loadViews() {}
    
    public func loadLayouts() {}
    
    public func loadDataAfterViews() {}
    
    
    deinit {
        print("----------- deinit has")
    }

}
