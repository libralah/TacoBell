//
//  DropShadow.swift
//  TacoBell
//
//  Created by Hung Nguyen on 5/31/17.
//  Copyright © 2017 Luvdub Nation. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    
    func shadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize.zero
    }
    
}
