//
//  FilmCollectionViewCell.swift
//  CallAPIItunes
//
//  Created by bùi thành công on 26/07/2022.
//

import UIKit

class FilmCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var nameFilm: UILabel!
    @IBOutlet weak var imageFilm: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        cornerAndBorder(view: [imageFilm], corner: 10, border: true, borderWith: 1, borderColor: UIColor.white.cgColor)
        // Initialization code
    }
    var item:Results?{
        didSet{
            nameFilm.text = item?.trackName
            imageFilm.load(url: item?.artworkUrl60)
        }
    }


}
