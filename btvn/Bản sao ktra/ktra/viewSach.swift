//
//  viewSach.swift
//  ktra
//
//  Created by bùi thành công on 14/06/2022.
//

import UIKit

class viewSach: ViewAdd {
    @IBOutlet weak var tv: UITextView!
    var arr2 : [book] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tv.text = "sach: \(arr2[0].tenSach) cua tac gia: \(arr2[0].tacGia) gia tien: \(arr2[0].gia)"
    }

}
