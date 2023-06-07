//
//  Networking.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import Foundation

class Networking {
    
    func fetchCats(completion: @escaping ([Cat]?) -> Void) {
        guard let url = URL(string: "https://api.thecatapi.com/v1/breeds") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error: \(error)")
                completion(nil)
                return
            }
            
            if let data = data {
                do {
                    let cats = try JSONDecoder().decode([Cat].self, from: data)
                    completion(cats)
                } catch {
                    print("Error decoding JSON: \(error)")
                    completion(nil)
                }
            }
        }.resume()
    }
    
    func fetchCatImage(for cat: Cat, completion: @escaping (Data?) -> Void) {
        let urlString = "https://api.thecatapi.com/v1/images/search?id=\(cat.id)"
        
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error loading image: \(error)")
                completion(nil)
                return
            }
            
            completion(data)
        }.resume()
    }
    
}
