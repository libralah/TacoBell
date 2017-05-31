//
//  MutableCollection+Ext.swift
//  TacoBell
//
//  Created by Hung Nguyen on 5/31/17.
//  Copyright © 2017 Luvdub Nation. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    
    mutating func shuffle() {
        guard count > 1 else { return }
    
    for i in startIndex ..< endIndex - 1{
    
        let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
        guard i != j else { continue }
        swap(&self[i], &self[j])
    
    }
    
    }
    
    
}
