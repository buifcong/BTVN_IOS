//
//  BookCell.swift
//  BookStoryBoard
//
//  Created by bùi thành công on 22/06/2022.
//

import UIKit

class BookCell: UITableViewCell {
    @IBOutlet weak var lbNameBook: UILabel!
    @IBOutlet weak var lbAuthor: UILabel!
    
    @IBOutlet weak var lbPrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        lbNameBook.textColor = .red

        // Configure the view for the selected state
    }
    
}
