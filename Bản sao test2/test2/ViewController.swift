//
//  ViewController.swift
//  test2
//
//  Created by bùi thành công on 28/06/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btBai6: UIButton!
    @IBOutlet weak var btBai7: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func tapOnBai6(_ sender: Any) {
        let vc = B6VC()
        present(vc, animated: true)
    }
    @IBAction func tapOnBai7(_ sender: Any) {
        let vc = Bai7VC()
        present(vc, animated: true)
    }
    

}

