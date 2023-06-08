//
//  MainView.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = ViewModel()
    var configuration = CatsApp.Configuration()
    
    var body: some View {
        NavigationView {
            List(viewModel.cats, id: \.id) { cat in
                CardView(cat: cat, viewModel: viewModel)
            }
            .navigationTitle(configuration.strings.navigationTitle)
            .onAppear {
                viewModel.fetchCats()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
