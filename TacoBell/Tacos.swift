//
//  Tacos.swift
//  TacoBell
//
//  Created by Hung Nguyen on 5/31/17.
//  Copyright © 2017 Luvdub Nation. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    
    case Corn = 1
    case Flour = 2
    
}

enum TacoProtein: String {
    
    case Beef = "Beef"
    case Fish = "Fish"
    case Brisket = "Brisket"
    case Chicken = "Chicken"
    
}

enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2
}

struct Tacos {
    
    private var _tacoCondiment: Int!
    private var _tacoProtein: String!
    private var _tacoShell: Int!
    private var _tacoName: String!
    private var _tacoId: Int!
    
    var tacoCondiment: Int {
        return _tacoCondiment
    }
    
    var tacoProtein: String {
        return _tacoProtein
    }
    
    var tacoShell: Int {
        return _tacoShell
    }
    
    var tacoName: String {
        return _tacoName
    }
    
    var tacoId: Int {
        return _tacoId
    }
    
    init(name: String, protein: Int, condiment: Int, Id: Int, shell: Int) {
        
        _tacoName = name
        
        switch protein {
            
        case 1:
            _tacoProtein = TacoProtein.Beef.rawValue
            
        case 2:
            _tacoProtein = TacoProtein.Fish.rawValue
            
        case 3:
            _tacoProtein = TacoProtein.Brisket.rawValue
            
        default:
            _tacoProtein = TacoProtein.Chicken.rawValue
            
        }
        
        switch condiment {
            
        case 2:
            _tacoCondiment = TacoCondiment.Plain.rawValue
        default:
            _tacoCondiment = TacoCondiment.Loaded.rawValue
            
        }
        
        _tacoId = Id
        
        switch shell {
            
        case 2:
            _tacoShell = TacoShell.Flour.rawValue
        default:
            _tacoShell = TacoShell.Corn.rawValue
            
        }
        
        
        
    }
    
    
}
