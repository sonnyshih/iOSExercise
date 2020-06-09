//
//  SpecialTableViewCell.swift
//  HelloTableView
//
//  Created by sonny on 2020/6/9.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class SpecialTableViewCell: UITableViewCell {

    @IBOutlet weak var specialImageView: UIImageView!
    @IBOutlet weak var specialLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
