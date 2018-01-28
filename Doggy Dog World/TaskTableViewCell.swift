//
//  TaskTableViewCell.swift
//  Doggy Dog World
//
//  Created by samuelhan on 1/27/18.
//  Copyright © 2018 Samuel Han. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageViewer: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
