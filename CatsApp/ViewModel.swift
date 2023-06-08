//
//  ViewModel.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var cats: [Cat] = []
    @Published var imageURLs: [String: URL] = [:]
    
    private let networking = Networking()
    private var configuration = CatsApp.Configuration()
    
    func fetchCats() {
        networking.fetchCats { [weak self] cats in
            DispatchQueue.main.async {
                self?.cats = cats ?? []
            }
        }
    }
    
    func fetchCatImageURL(for cat: Cat) {
        networking.fetchCatImage(for: cat) { catImageURL in
            if let catImageURL = catImageURL?.first?.url {
                DispatchQueue.main.async { [weak self] in
                    self?.imageURLs[cat.id] = catImageURL
                    debugPrint("URL: \(catImageURL)")
                }
            }
        }
    }
}
