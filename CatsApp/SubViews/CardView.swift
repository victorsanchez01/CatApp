//
//  CardView.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import SwiftUI

struct CardView: View {
    var cat: Cat
    var viewModel: ViewModel
    let configuration = CatsApp.Configuration()
    
    var body: some View {
        VStack(spacing: 4) {
            CatImageView(cat: cat, viewModel: viewModel)
                .frame(maxWidth: 250)
                .cornerRadius(10)
                .shadow(radius: 6)
                .padding()
            
            HStack {
                Text(configuration.strings.breedlabel)
                    .modifier(CatsApp.Design.Styles.LabelsFont())
                Spacer()
                Text(cat.name)
                    .modifier(CatsApp.Design.Styles.ValuesFont())
            }
            .padding(.horizontal)
            
            HStack {
                Text(configuration.strings.originlabel)
                    .modifier(CatsApp.Design.Styles.LabelsFont())
                Spacer()
                Text(cat.origin)
                    .modifier(CatsApp.Design.Styles.ValuesFont())
            }
            .padding(.horizontal)
            
            RatingView(title: configuration.strings.intelligencelabel, rating: cat.intelligence)
            RatingView(title: configuration.strings.childFriendlylabel, rating: cat.childFriendly)
            RatingView(title: configuration.strings.affectionLevellabel, rating: cat.affectionLevel)
            RatingView(title: configuration.strings.energyLevellabel, rating: cat.energyLevel)
            
            Spacer()
            
        }
        .modifier(CatsApp.Design.Styles.CardView())
    }
}


