//
//  Networking.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import Foundation
import UIKit

class Networking {
    
    let apiKey = "bda53789-d59e-46cd-9bc4-2936630fde39"
    
    func fetchCats(completion: @escaping ([Cat]?) -> Void) {
        guard let url = URL(string: "https://api.thecatapi.com/v1/breeds") else {
            completion(nil)
            return
        }
        
        var request = URLRequest(url: url)
        request.setValue(apiKey, forHTTPHeaderField: "x-api-key")
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                debugPrint("Error: \(error)")
                completion(nil)
                return
            }
            
            if let data = data {
                do {
                    let cats = try JSONDecoder().decode([Cat].self, from: data)
                    completion(cats)
                } catch {
                    debugPrint("Error decoding JSON: \(error)")
                    completion(nil)
                }
            }
        }.resume()
    }
    
    func fetchCatImage(for cat: Cat, completion: @escaping ([CatImage]?) -> Void) {
        let urlString = "https://api.thecatapi.com/v1/images/search?id=\(cat.id)"

        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }

        var request = URLRequest(url: url)
        request.setValue(apiKey, forHTTPHeaderField: "x-api-key")

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                debugPrint("Error: \(error)")
                completion(nil)
                return
            }

            if let data = data {
                do {
                    let catURL = try JSONDecoder().decode([CatImage].self, from: data)
                    completion(catURL)
                } catch {
                    debugPrint("Error decoding JSON: \(error)")
                    completion(nil)
                }
            }
        }.resume()
    }
    
}
