//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Bailig Abhanar on 2017-04-10.
//  Copyright © 2017 Bailig Abhanar. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath)  -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("error: dequeue reusable cell with identifier \(T.reuseIdentifier) failed!")
        }
        return cell
    }
}

extension UICollectionViewCell: ReusableView { }
