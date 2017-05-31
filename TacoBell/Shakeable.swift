//
//  Shakeable.swift
//  TacoBell
//
//  Created by Hung Nguyen on 5/31/17.
//  Copyright © 2017 Luvdub Nation. All rights reserved.
//

import UIKit

protocol Shakeable {}

extension Shakeable where Self: UIView{
    
    func shake() {
    let animation = CABasicAnimation(keyPath: "position")
    animation.autoreverses = true
    animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        animation.duration = 0.04
        animation.repeatCount = 5
        layer.add(animation, forKey: "position")
        
    }
}
