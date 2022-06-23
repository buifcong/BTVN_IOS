//
//  firstVC.swift
//  data-lesson9
//
//  Created by bùi thành công on 21/06/2022.
//

import UIKit

class firstVC: UIViewController {
    @IBOutlet weak var tfUsername: UITextField!
    
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBrown
    }

    @IBAction func tapOnLogin(_ sender: Any) {
        let vc = secondvC()
        if let username = tfUsername.text, let password = tfPassword.text {
            vc.password = username
            vc.userName = password
            vc.delegate = self
            vc.modalPresentationStyle = .fullScreen
            vc.handleLogout =  {result in
                
            }
            present(vc, animated: true)
        }
        else {
            let al = UIAlertController(title: "Woop.", message: "Please, enter your information", preferredStyle: .alert)
            al.addAction(UIAlertAction(title: "ok", style: .default))
            al.addAction(UIAlertAction(title: "why", style: .cancel))
            present(al, animated: true)
        }

    }
    
}
extension firstVC : passData {
    func logout() {
        <#code#>
    }
    
    func updateUsername(username: String) {
        <#code#>
    }
    
    
}
