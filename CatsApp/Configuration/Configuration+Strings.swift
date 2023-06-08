//
//  Configuration+Strings.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import SwiftUI

extension CatsApp {
    
    /// CatsApp strings
    struct Strings {
        
        /// Navigation title
        public var navigationTitle: String { return localize(key: "navigation.title") }
        
        /// Breed label
        public var breedlabel: String { return localize(key: "breed.label") }
        /// Origin label
        public var originlabel: String { return localize(key: "origin.label") }
        /// Intelligence label
        public var intelligencelabel: String { return localize(key: "intelligence.label") }
        /// Child Friendly label
        public var childFriendlylabel: String { return localize(key: "childFriendly.label") }
        /// AffectionLevel label
        public var affectionLevellabel: String { return localize(key: "affectionLevel.label") }
        /// Energy Level label
        public var energyLevellabel: String { return localize(key: "energyLevel.label") }
        
        
        
         // MARK: - Private
        private func localize(key: String) -> String {
            let text = NSLocalizedString(key, comment: "")
            return text
        }
    }
}
