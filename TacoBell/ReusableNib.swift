//
//  ReusableNib.swift
//  TacoBell
//
//  Created by Hung Nguyen on 5/31/17.
//  Copyright © 2017 Luvdub Nation. All rights reserved.
//

import UIKit

protocol ReusableNib {}

extension ReusableNib where Self: UIView {
    
    static var nibName: String {
        return String(describing: self)
    }
    
}
