//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by Simrandeep Singh on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit


class RepoTableViewCell: UITableViewCell {

    
    var repo: GithubRepo! {
        didSet {
            // set images in cell
            repoImageView.setImageWith(URL(string: repo.ownerAvatarURL!)!)
            
            // set labels
            nameLabel.text = repo.name
            userLabel.text = repo.ownerHandle
            descriptionLabel.text = repo.repoDescription
            starLabel.text = "\(repo.stars!)"
            forkLabel.text = "\(repo.forks!)"
        }
    }

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var repoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
