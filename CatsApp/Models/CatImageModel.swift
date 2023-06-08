//
//  CatImageModel.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import Foundation

struct CatImage: Codable {
    
    let url: URL
    
    private enum CodingKeys: String, CodingKey {
        case url
    }
}
