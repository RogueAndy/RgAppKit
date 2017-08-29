//
//  RATesTgcd.swift
//  RApps
//
//  Created by rogue on 2017/8/29.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

import UIKit

class RATesTgcd: NSObject {

    public func gcd_queue() {
    
        let queue = DispatchQueue(label: "com.rogue.andy.RApps")
        queue.sync {
            for i in 0..<10 {
            
                print("同步队列执行 😆", i)
            
            }
        }
        
        for j in 0..<10 {
        
            print("同步主队列执行 😆", j)
            
        }
        
    }
    
    public func gcd_asyncQueue() {
    
        let queue = DispatchQueue(label: "com.rogue.andy.RApps")
        queue.async {
            for i in 0..<10 {
            
                print("异步队列执行 😆", i)
            
            }
        }
        
        for j in 0..<10 {
        
            print("同步主队列执行 😆", j)
            
        }
    
    }
    
    public func gcd_qos() {
    
        let queue = DispatchQueue(label: "com.rogue.andy.RApps", qos:DispatchQoS.unspecified, attributes:.concurrent)
        queue.async {
            for i in 0..<10 {
            
                print("😆", i)
            
            }
        }
        
        queue.async {
            for k in 100..<110 {
            
                print("😆", k)
            
            }
        }
    
    }
    
    /// group 的 wait 方法，enter()和leave()方法就像 引用计数一样，用了需要释放，不然会一直卡在 wait() 方法
    public func gcd_group_wait() {
    
        let group = DispatchGroup()
        let queueBook = DispatchQueue(label: "book")
        let queueVideo = DispatchQueue(label: "video")
        
        queueBook.async(group: group) {
            
            group.enter()
            for i in 0..<100 {
            
                print("哈哈 😆", i)
            
            }
            
            group.leave()
            
        }
        
        queueVideo.async(group: group) {
            
            group.enter()
            for j in 100..<1000 {
            
                print("哈 😆", j)
            
            }
            group.leave()
        }
        
        print("执行完了？????")
        
        group.wait()
        print("此方法在 wait 后面------------------")
    
    }
    
    /// 执行完所有的 group 后，才会执行 nofity() 方法
    public func gcd_group_notify() {
        
        let group = DispatchGroup()
        let queueBook = DispatchQueue(label: "book")
        let queueVideo = DispatchQueue(label: "video")
        
        queueBook.async(group: group) {
            
            for i in 0..<100 {
                
                print("哈哈 😆", i)
                
            }
            
        }
        
        queueVideo.async(group: group) {
        
            for j in 100..<1000 {
                
                print("哈 😆", j)
                
            }
        }
        
        print("执行完了？????")
        
        group.notify(queue: DispatchQueue.main) {

            print("执行完成所有代码")

        }
        
    }
    
}
