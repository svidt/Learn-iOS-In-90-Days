//
//  MenuItem.swift
//  The Menu App
//
//  Created by Svidt on 17/06/2023.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
    
}
