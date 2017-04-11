//
//  MutableCollection+Ext.swift
//  TacoPOP
//
//  Created by Bailig Abhanar on 2017-04-10.
//  Copyright © 2017 Bailig Abhanar. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    mutating func shuffle() {
        guard count >= 2 else { return }
        
        for i in startIndex..<endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
        
    }
}
