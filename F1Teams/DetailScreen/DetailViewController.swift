//
//  DetailViewController.swift
//  F1Teams
//
//  Created by Guest User on 15/04/2024.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var teamImageView: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var teamCountryLabel: UILabel!
    @IBOutlet weak var teamDescriptionLabel: UILabel!
    
    var viewModel: DetailViewModelProtocol
    
    init(viewModel: DetailViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been im^lemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        teamImageView.image = UIImage(named: viewModel.team.image)
        teamNameLabel.text = viewModel.team.name
        teamCountryLabel.text = viewModel.team.country.rawValue
        teamDescriptionLabel.text = viewModel.team.description
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
