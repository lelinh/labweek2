//
//  SlideCell.swift
//  GithubDemo
//
//  Created by Nam Pham on 2/23/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SlideCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UIView!
    @IBOutlet weak var slide: UISlider!
    @IBOutlet weak var starLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
