//
//  NewsListCell.swift
//  HubbleNews
//
//  Created by Narendra Pandey on 22/05/21.
//

import UIKit

class NewsListCell: UITableViewCell {

    
    @IBOutlet weak var newsDate: UILabel!
    @IBOutlet weak var newsDescriptions: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
