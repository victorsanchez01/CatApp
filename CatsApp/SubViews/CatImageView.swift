//
//  CatImageView.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import SwiftUI

struct CatImageView: View {
    var cat: Cat
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        
        AsyncImage(url: viewModel.imageURLs[cat.id]) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
        } placeholder: {
            ProgressView()
        }
        .onAppear {
            viewModel.fetchCatImageURL(for: cat)
        }
        
    }
}
