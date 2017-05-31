//
//  UICollectionView+Ext.swift
//  TacoBell
//
//  Created by Hung Nguyen on 5/31/17.
//  Copyright © 2017 Luvdub Nation. All rights reserved.
//

import UIKit

extension UICollectionView: ReusableNib, ReuseIdentifier {
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableNib, T: ReuseIdentifier {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIentifier)
        
    }
    
    func dequeueCell<T: UICollectionViewCell> (forIndexPath indexPath: IndexPath) -> T where T: ReuseIdentifier {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIentifier, for: indexPath) as? T else {
            fatalError("Couldn't dequeue T.Reuseidentifier")}
        
         return cell
    
    }
    
    
}

extension UICollectionViewCell: ReuseIdentifier {}
