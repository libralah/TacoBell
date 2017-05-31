//
//  DataService.swift
//  TacoBell
//
//  Created by Hung Nguyen on 5/31/17.
//  Copyright © 2017 Luvdub Nation. All rights reserved.
//

import Foundation

protocol DataService: class {
    
    func DataServiceDelegate()
    
}

class DataServiceDelegate {
    
    weak var DataServiceObject: DataService?
    
    static let instance = DataServiceDelegate()
    
    var tacos = [Tacos]()
    
    func loadTacos() {
        
        tacos.append(Tacos(name: "Loaded Beef Corn Tacos", protein: 1, condiment: 1, Id: 1, shell: 1))
        tacos.append(Tacos(name: "Loaded Beef Flour Tacos", protein: 1, condiment: 1, Id: 2, shell: 2))
        tacos.append(Tacos(name: "Plain Beef Corn Tacos", protein: 1, condiment: 2, Id: 3, shell: 1))
        tacos.append(Tacos(name: "Plain Beef Flour Tacos", protein: 1, condiment: 2, Id: 4, shell: 2))
        tacos.append(Tacos(name: "Loaded Fish Corn Tacos", protein: 2, condiment: 1, Id: 5, shell: 1))
        tacos.append(Tacos(name: "Loaded Fish Flour Tacos", protein: 2, condiment: 1, Id: 6, shell: 2))
        tacos.append(Tacos(name: "Plain Fish Corn Tacos", protein: 2, condiment: 2, Id: 7, shell: 1))
        tacos.append(Tacos(name: "Plain Fish Flour Tacos", protein: 2, condiment: 2, Id: 8, shell: 2))
        tacos.append(Tacos(name: "Loaded Brisket Corn Tacos", protein: 3, condiment: 1, Id: 9, shell: 1))
        tacos.append(Tacos(name: "Loaded Brisket Flour Tacos", protein: 3, condiment: 1, Id: 10, shell: 2))
        tacos.append(Tacos(name: "Plain Brisket Corn Tacos", protein: 3, condiment: 2, Id: 11, shell: 1))
        tacos.append(Tacos(name: "Plain Brisket Flour Tacos", protein: 3, condiment: 2, Id: 12, shell: 2))
        tacos.append(Tacos(name: "Loaded Chicken Corn Tacos", protein: 4, condiment: 1, Id: 13, shell: 1))
        tacos.append(Tacos(name: "Loaded Chicken Flour Tacos", protein: 4, condiment: 1, Id: 14, shell: 2))
        tacos.append(Tacos(name: "Plain Chicken Corn Tacos", protein: 4, condiment: 2, Id: 15, shell: 1))
        tacos.append(Tacos(name: "Plain Chicken Flour Tacos", protein: 4, condiment: 2, Id: 16, shell: 2))
        
        DataServiceObject?.DataServiceDelegate()
    }
    
}
