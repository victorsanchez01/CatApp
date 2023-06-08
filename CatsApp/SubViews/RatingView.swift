//
//  RatingView.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import SwiftUI
import Foundation

struct RatingView: View {
    var title: String
    var rating: Int
    let configuration = CatsApp.Configuration()
    
    var body: some View {
        HStack {
            Text("\(title):")
                .modifier(CatsApp.Design.Styles.LabelsFont())
            Spacer()
            ForEach(1...5, id: \.self) { index in
                Image(systemName: index <= rating ? configuration.design.starFilled : configuration.design.starEmpty)
                    .foregroundColor(index <= rating ? .yellow : .gray)
                    .font(.system(size: 11))
            }
        }
        .padding(.horizontal)
    }
}
