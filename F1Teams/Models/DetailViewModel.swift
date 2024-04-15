//
//  DetailViewModel.swift
//  F1Teams
//
//  Created by Guest User on 15/04/2024.
//

import Foundation

protocol DetailViewModelProtocol {
    var team: Team { get }
}

class DetailViewModel: DetailViewModelProtocol {
    
    var team: Team
    
    init(team: Team) {
        self.team = team
    }
}
