//
//  DropShadow.swift
//  Taco APp
//
//  Created by AKIL KUMAR THOTA on 1/1/17.
//  Copyright © 2017 AKIL KUMAR THOTA. All rights reserved.
//

import UIKit

protocol shadow {}

extension shadow where Self: UIView {
    
    func addShadow() {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5.0
        layer.shadowOpacity = 0.7
    }
    
}
