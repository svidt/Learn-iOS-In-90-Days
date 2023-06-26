//
//  Attraction.swift
//  Guidebook
//
//  Created by Kristian Emil Hansen Svidt on 26/06/2023.
//

import Foundation

struct Attraction: Identifiable {
    
    var id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
}
