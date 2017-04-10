//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Bailig Abhanar on 2017-04-10.
//  Copyright © 2017 Bailig Abhanar. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
