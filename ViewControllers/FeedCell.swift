//
//  FeedCell.swift
//  SnapchatFirebase
//
//  Created by Seyfo on 12.02.2023.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var feedImageView: UIImageView!
    
    @IBOutlet weak var feedUsernameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
