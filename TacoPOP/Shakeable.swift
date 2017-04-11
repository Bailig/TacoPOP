//
//  Shakeable.swift
//  TacoPOP
//
//  Created by Bailig Abhanar on 2017-04-10.
//  Copyright © 2017 Bailig Abhanar. All rights reserved.
//

import UIKit

protocol Shakeable { }

extension Shakeable where Self: UIView {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 1, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 1, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
}
