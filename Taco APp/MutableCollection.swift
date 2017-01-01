//
//  MutableCollection.swift
//  Taco APp
//
//  Created by AKIL KUMAR THOTA on 1/1/17.
//  Copyright © 2017 AKIL KUMAR THOTA. All rights reserved.
//

import Foundation


//extension MutableCollection {
//    mutating func shuffle() {
//        if count < 2 { return }
//        
//        for i in startIndex..< endIndex {
//            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
//            guard i != j else { continue }
//            swap(&self[i], &self[j])
//        }
//    }
//}

extension MutableCollection where Index == Int {
    mutating func shuffle() {
        if count < 2 { return }
        for i in startIndex ..< endIndex{
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}
