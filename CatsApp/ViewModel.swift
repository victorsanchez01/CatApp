//
//  ViewModel.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import SwiftUI

class ViewModel {
    @Published var cats: [Cat] = []
    let networking = Networking()
    
    func fetchCats() {
        networking.fetchCats { [weak self] cats in
            DispatchQueue.main.async {
                self?.cats = cats ?? []
            }
        }
    }
    
    func fetchCatImage(for cat: Cat, completion: @escaping (Data?) -> Void) {
        networking.fetchCatImage(for: cat, completion: completion)
    }
}
