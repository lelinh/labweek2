//
//  GithubCell.swift
//  GithubDemo
//
//  Created by Nam Pham on 2/23/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class GithubCell: UITableViewCell {

    @IBOutlet weak var githubNamelbl: UILabel!
    @IBOutlet weak var ratingCountLbl: UILabel!
    @IBOutlet weak var forklbl: UILabel!
    @IBOutlet weak var descriptionlbl: UILabel!
    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var authorlbl: UILabel!
    
    var githubRepo: GithubRepo!{
        didSet{
            //code
            githubNamelbl.text = githubRepo.name
            authorlbl.text = githubRepo.ownerHandle
            ratingCountLbl.text = "\(githubRepo.stars!)"
            forklbl.text = "\(githubRepo.forks!)"
            thumbnailImage.setImageWith(NSURL(string: githubRepo.ownerAvatarURL!) as! URL)
            descriptionlbl.text = githubRepo.repoDescription
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
