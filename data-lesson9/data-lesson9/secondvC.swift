//
//  secondvC.swift
//  data-lesson9
//
//  Created by bùi thành công on 21/06/2022.
//

import UIKit
// protocol; view B uỷ quyền cho View A thực hiện 1 hành động thay đổi
protocol passData: AnyObject {
    func logout()
    func updateUsername(username: String)
}

class secondvC: UIViewController {
    weak var delegate: passData?
    @IBOutlet weak var lbUsername: UILabel!
    @IBOutlet weak var lbPassword: UILabel!
    
    var userName = ""
    var password = ""
    var handleLogout: ((String) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        lbUsername.text = userName
        lbPassword.text = password

    }

    @IBAction func tapOnSignOut(_ sender: Any) {
        if lbUsername.text != userName {
            delegate?.updateUsername(username: lbUsername.text!)
        }
        else {
//            delegate?.logout()
            handleLogout?("logOut")
        }
        dismiss(animated: true)
    }
    

}
