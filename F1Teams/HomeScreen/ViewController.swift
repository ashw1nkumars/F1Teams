//
//  ViewController.swift
//  F1Teams
//
//  Created by Guest User on 15/04/2024.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var discoverButton: UIButton!
    @IBOutlet weak var discoverButton: UIButton!
    
    let viewModel: HomeScreenViewModelProtocol
    
    required init?(coder aDecoder: NSCoder) {
        self.viewModel = HomeScreenViewModel()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    discoverButton?.addTarget(self, action: "discoverButtonClicked:", for: .touchUpInside)


    @IBAction func discoverButtonClicked(_ sender: Any) {
        let viewModelInstance = viewModel.resolveTeamView()
        let viewController = TeamViewController(viewModel: viewModelInstance)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

