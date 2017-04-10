//
//  ResuableView.swift
//  TacoPOP
//
//  Created by Bailig Abhanar on 2017-04-10.
//  Copyright © 2017 Bailig Abhanar. All rights reserved.
//

import UIKit

protocol ReusableView: class { }

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
