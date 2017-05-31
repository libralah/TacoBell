//
//  ReuseIdentifier.swift
//  TacoBell
//
//  Created by Hung Nguyen on 5/31/17.
//  Copyright © 2017 Luvdub Nation. All rights reserved.
//

import UIKit

protocol ReuseIdentifier {}

extension ReuseIdentifier where Self: UIView {
    
    static var reuseIentifier: String {
        return String(describing: self)
    }
    
}
