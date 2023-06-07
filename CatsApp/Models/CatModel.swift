//
//  CatModel.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import Foundation

struct Cat: Codable {
    
    let id: String
    let name: String
    let description: String
    let affectionLevel: Int
    let childFriendly: Int
    let energyLevel: Int
    let intelligence: Int
    
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case affectionLevel
        case childFriendly
        case energyLevel
        case intelligence
    }
}
