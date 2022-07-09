//
//  ViewController.swift
//  autoLayout
//
//  Created by bùi thành công on 01/07/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btLogin: UIButton!
    @IBOutlet weak var btRegister: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        btLogin.clipsToBounds = true
        btLogin.layer.cornerRadius = btLogin.frame.size.height/2
        btRegister.layer.cornerRadius = btRegister.frame.size.height/2
    }

    @IBAction func tapOnLogin(_ sender: Any) {
        let vc = LoginVC()

        present(vc, animated:true)
    }
    @IBAction func tapOnRegister(_ sender: Any) {
    }
    
}

