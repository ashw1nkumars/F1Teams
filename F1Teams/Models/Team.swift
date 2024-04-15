//
//  Team.swift
//  F1Teams
//
//  Created by Guest User on 15/04/2024.
//

import Foundation

enum Country: String {
    case all = "All"
    case france = "France"
    case germany = "Germany"
    case usa = "USA"
    case austria = "Austria"
    case italy = "Italy"
    case uk = "United Kingdom"
}

class Team {
    let name: String
    let description: String
    let image: String
    let country: Country
    
    init(name: String, description: String, image: String, country: Country) {
        self.name = name
        self.description = description
        self.image = image
        self.country = country
    }
}
