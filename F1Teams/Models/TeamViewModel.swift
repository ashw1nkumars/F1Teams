//
//  TeamViewModel.swift
//  F1Teams
//
//  Created by Guest User on 15/04/2024.
//

import Foundation

protocol TeamViewModelProtocol {
    var teams: [Team]? { get }
    func resolveDetailViewModel(team: Team) -> DetailViewModelProtocol
}

class TeamViewModel: TeamViewModelProtocol {
    var teams: [Team]?
    
    init() {
        teams = [Team]()
        
        let redBull = Team(name: "Red Bull", description: "Red Bull entered F1 in 2004 as a works team, achieving remarkable success in the following decade. Notable accomplishments include consecutive title doubles from 2010 to 2013 and Sebastian Vettel becoming the youngest quadruple champion.", image: "redbull", country: Country.austria)
        let mercedes = Team(name: "Mercedes", description: "Mercedes' F1 revival began in 2010, featuring the return of Michael Schumacher. The team dominated with Lewis Hamilton, winning multiple championships. Currently, Hamilton partners with rising star George Russell.", image: "mercedes", country: Country.germany)
        let ferrari = Team(name: "Ferrari", description: "Ferrari, present in every F1 season since 1950, is an iconic brand. Successes include Alberto Ascari, John Surtees, Niki Lauda, and Michael Schumacher leading to five consecutive title doubles in the 2000s.", image: "ferrari", country: Country.italy)
        let mclaren = Team(name: "McLaren", description: "Founded in 1966 by Bruce McLaren, the team boasts decades of success with drivers like Emerson Fittipaldi, Ayrton Senna, Mika Hakkinen, and Lewis Hamilton. Eight constructors' championships highlight their achievements.", image: "mclaren", country: Country.uk)
        let astonMartin = Team(name: "Aston Martin", description: "Aston Martin's original F1 stint in the 1960s was brief, but their recent return, formerly as Jordan and Racing Point, includes victories. With a two-time champion leading, Aston Martin is a team to watch.", image: "astonmartin", country: Country.uk)
        let alpine = Team(name: "Alpine", description: "A new name in F1, Alpine, rebranded in 2021, inherits Renault's motorsport legacy. Regular podiums and a title challenge are expected from this team with a rich sportscar heritage.", image: "alpine", country: Country.france)
        let williams = Team(name: "Williams", description: "Founded by Sir Frank Williams, Williams is a force in F1. With numerous wins and championships, the team has nurtured top talents. After the 2020 sale to Dorilton Capital, a new era begins.", image: "william", country: Country.uk)
        let alphaTauri = Team(name: "Alpha Tauri", description: "Established in 2006 as Toro Rosso, AlphaTauri, Red Bull's junior team, earned success with Sebastian Vettel. It evolved into a constructor, emphasizing talent development and individual success.", image: "at", country: Country.italy)
        let alfaRomeo = Team(name: "Alfa Romeo", description: "With F1 ties since 1950, Alfa Romeo's 21st-century team combines Italian flair and Swiss sensibilities in a new era for the team formerly known as Sauber.", image: "af", country: Country.italy)
        let haasF1Team = Team(name: "Haas F1 Team", description: "The youngest team on the grid, Haas debuted impressively in 2016, led by Gene Haas. Based in the U.S. with a Ferrari engine, they aim to make a mark in F1.", image: "haas", country: Country.usa)
        
        teams?.append(redBull)
        teams?.append(mercedes)
        teams?.append(ferrari)
        teams?.append(mclaren)
        teams?.append(astonMartin)
        teams?.append(alpine)
        teams?.append(williams)
        teams?.append(alphaTauri)
        teams?.append(alfaRomeo)
        teams?.append(haasF1Team)
    }
    
    func resolveDetailViewModel(team: Team) -> DetailViewModelProtocol {
        let viewModel = DetailViewModel(team: team)
        return viewModel
    }
}
