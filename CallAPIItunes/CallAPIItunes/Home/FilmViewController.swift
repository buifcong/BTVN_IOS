//
//  FilmViewController.swift
//  CallAPIItunes
//
//  Created by bùi thành công on 27/07/2022.
//

import UIKit
import AVKit
import AVFAudio
class FilmViewController: UIViewController, AVPlayerViewControllerDelegate {
    var playerController = AVPlayerViewController()
    var film:Results?
    @IBOutlet weak var btnWatch: UIButton!
    @IBOutlet weak var lbCountry: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    @IBOutlet weak var lbArtist: UILabel!
    @IBOutlet weak var lbTrack: UILabel!
    @IBOutlet weak var imageFilm: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        designUI()
        title = "Film"

        // Do any additional setup after loading the view.
    }
    func designUI(){
        imageFilm.load(url:film?.artworkUrl60)
        lbTrack.text = "Track:\(film?.trackName ?? "")"
        lbPrice.text = "Price: \(film?.trackPrice ?? 0)$"
        lbArtist.text = "Artiist: \(film?.artistName ?? "")"
        lbCountry.text = "Country: \(film?.country ?? "")"
    }

    @IBAction func actionButton(_ sender: UIButton) {
        switch sender {
        case btnWatch:
            guard let url = URL(string: (film?.previewUrl)!)  else {return}
            let player = AVPlayer(url: url)
            playerController = AVPlayerViewController()
            playerController.player = player
            playerController.allowsPictureInPicturePlayback = true
            playerController.delegate = self
            playerController.player?.play()
            present(playerController, animated: true)
            return
        default:
            return
        }
    }
    
 
}
