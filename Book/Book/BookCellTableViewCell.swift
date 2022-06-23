//
//  BookCellTableViewCell.swift
//  Book
//
//  Created by bùi thành công on 22/06/2022.
//

import UIKit

class BookCellTableViewCell: UITableViewCell {
    @IBOutlet weak var imgBook: UIImageView!
    @IBOutlet weak var lbNameBook: UILabel!
    @IBOutlet weak var lbTacGia: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
