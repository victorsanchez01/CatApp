//
//  Configuration.swift
//  CatsApp
//
//  Created by victor.sanchez on 7/06/23.
//

import Foundation

public struct CatsApp {
    /// Configuration for the `CustomContacts` screen
    struct Configuration {
        
        /// Initialiser for `CustomContacts.Configuration`.
        public init() { /* leave empty */ }
        
        /// Configuration of strings used on the CustomAccounts screens
        public var strings = Strings()
        
        /// Configuration of design used on the CustomAccounts screens
        public var design = Design()
       
    }
    
}
