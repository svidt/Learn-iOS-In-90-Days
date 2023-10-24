//
//  City.swift
//  Guidebook
//
//  Created by Svidt on 26/06/2023.
//

import Foundation

struct City: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
