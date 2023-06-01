//
//  Pizza.swift
//  Recipe List App
//
//  Created by Svidt on 01/06/2023.
//

import Foundation

struct Pizza: Identifiable {
    
    var id = UUID()
    var name: String
    var topping1: String
    var topping2: String
    var topping3: String

}
