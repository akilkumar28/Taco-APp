//
//  Shakeable Animation.swift
//  Taco APp
//
//  Created by AKIL KUMAR THOTA on 1/1/17.
//  Copyright © 2017 AKIL KUMAR THOTA. All rights reserved.
//

import UIKit

protocol Shakeable {}


extension Shakeable where Self: UIView {
    
    func Shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.fromValue = NSValue(cgPoint: CGPoint(x:self.center.x - 4.0, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
}
