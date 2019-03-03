//
//  scoreCell.swift
//  livFit
//
//  Created by Akshat Gupta on 03/03/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class scoreCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var score: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
