//
//  PlayerCell.swift
//  Ratings
//
//  Created by Damodar on 26/02/15.
//  Copyright (c) 2015 itsdamslife. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {

//     var taguer: NSInteger
    
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
