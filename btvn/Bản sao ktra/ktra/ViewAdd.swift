//
//  ViewAdd.swift
//  ktra
//
//  Created by bùi thành công on 14/06/2022.
//

import UIKit

class ViewAdd: UIViewController {
    var arr:[book] = []
    @IBOutlet weak var tfMaSach: UITextField!
    @IBOutlet weak var tfTenSach: UITextField!
    @IBOutlet weak var tfTacGia: UITextField!
    @IBOutlet weak var tfTheLoai: UITextField!
    @IBOutlet weak var tfSoTrang: UITextField!
    @IBOutlet weak var tfGia: UITextField!
    @IBOutlet weak var tfSL: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func design(){
    
    }
    @IBAction func tapOnAdd(_ sender: Any) {
        let sach = book()
        sach.maSach = tfMaSach.text ?? ""
        sach.tacGia =  tfTacGia.text ?? ""
        sach.tenSach = tfTenSach.text ?? ""
        sach.theLoai = tfTheLoai.text ?? ""
        sach.soTrang = Int(tfSoTrang.text ?? "") ?? 0
        sach.gia = Float(tfGia.text ?? "") ?? 0
        sach.soLuong = Int(tfSL.text ?? "") ?? 0
        arr.append(sach)
        let al = UIAlertController(title: "add book successfull", message: nil, preferredStyle: .alert)
        al.addAction(UIAlertAction(title: "ok", style: .default))
        present(al, animated: true)

    }
    @IBAction func tapOnView(_ sender: Any) {
        let vc = viewSach()
        for value in arr{
            vc.arr2.append(value)
        }
        present(vc, animated: true)
    }
    

}
