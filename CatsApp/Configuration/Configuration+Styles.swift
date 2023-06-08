//
//  Configuration+Styles.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import SwiftUI

public extension CatsApp.Design {
    
    /// CatsApp styles
    struct Styles {
        
        /// Labels text style
        struct LabelsFont: ViewModifier {
            func body(content: Content) -> some View {
                content
                    .font(.system(size: 13, weight: .bold))
            }
        }
            
        /// Values text style
        struct ValuesFont: ViewModifier {
            func body(content: Content) -> some View {
                content
                    .font(.system(size: 13, weight: .regular))
                    .foregroundColor(.gray)
            }
        }
        
        /// CardView style
        struct CardView: ViewModifier {
            func body(content: Content) -> some View {
                content
                    .listRowSeparator(.hidden)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 4)
                    .padding(.vertical, 8)
            }
        }
        
    }
}
