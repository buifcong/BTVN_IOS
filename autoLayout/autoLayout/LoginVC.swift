//
//  LoginVC.swift
//  autoLayout
//
//  Created by bùi thành công on 01/07/2022.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var tfPass: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    @IBOutlet weak var btLogin: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("haha")
        design()
    }
    func design(){
        tfPass.clipsToBounds = true
        tfPass.layer.cornerRadius = tfPass.frame.size.height/2
        tfEmail.clipsToBounds = true
        tfEmail.layer.cornerRadius = tfEmail.frame.size.height/2
        btLogin.layer.cornerRadius = btLogin.frame.size.height/2
    }
}
