//
//  TeamTableViewCell.swift
//  F1Teams
//
//  Created by Guest User on 15/04/2024.
//

import UIKit

class TeamTableViewCell: UITableViewCell {
    @IBOutlet weak var teamLogo: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    
    func configureUI(image: String, title:String) {
        teamLogo.image = UIImage(named: image)
        teamNameLabel.text = title
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
}
