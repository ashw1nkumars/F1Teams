//
//  HomeScreenViewModel.swift
//  F1Teams
//
//  Created by Guest User on 15/04/2024.
//

import Foundation

protocol HomeScreenViewModelProtocol {
    func resolveTeamView() -> TeamViewModelProtocol
}

class HomeScreenViewModel: HomeScreenViewModelProtocol {
    func resolveTeamView() -> TeamViewModelProtocol {
        let viewModel = TeamViewModel()
        return viewModel
    }
}
