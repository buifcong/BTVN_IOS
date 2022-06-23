//
//  Navigation.swift
//  Book
//
//  Created by bùi thành công on 22/06/2022.
//

import UIKit

class Navigation: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        let show = ShowBook()
        navigationController?.pushViewController(show, animated: true)
    }


}
