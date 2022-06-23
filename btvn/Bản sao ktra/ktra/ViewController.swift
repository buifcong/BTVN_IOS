//
//  ViewController.swift
//  ktra
//
//  Created by bùi thành công on 14/06/2022.
//

import UIKit

class ViewController: UIViewController {
    var timer :Timer?
    @IBOutlet weak var lbTimer: UILabel!
    @IBOutlet weak var btStart: UIButton!
    @IBOutlet weak var sliderTimer: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpDesign()
    }
    func setUpDesign(){
        btStart.layer.cornerRadius = 12
        btStart.layer.masksToBounds = true
        
    }
    @IBAction func slider(_ sender: Any) {
        lbTimer.text = String(Int(sliderTimer.value))
        
    }
    @IBAction func tapOnStart(_ sender: Any) {
        
        if timer?.isValid == true {
           return
        }
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [self] _ in
            sliderTimer.value -= 1
            lbTimer.text = String(Int(sliderTimer.value))
            if sliderTimer.value == 0 {
                lbTimer.text = "het gio"
                self.timer?.invalidate()
            }
        })
    }
    @IBAction func tapOnB4(_ sender: Any) {
        let vc = ViewAdd()
        present(vc, animated: true)
    }
    

}
/*Đề kiểm tra basic lần 1

Yêu cầu: Các bài toán nhập vào phải kiểm tra dữ liệu người dùng có hợp lệ hay không (VD: nhập vào số thì phải là số hợp lệ thoả mãn điều kiện). Viết thành hàm nếu có thể.

Bài 3: Xây dựng giao diện chương trình bấm giờ. Người dùng nhập vào số giây và ấn nút, thời gian sẽ giảm dần về 0 thì dừng lại. UI tuỳ ý.

Bài 4: Xây dựng giao diện in ra thông tin của một cuốn sách (mã, tên, tác giả, thể loại, số trang, giá tiền, số lượng). Sử dụng model class hoặc struct. UI tuỳ ý.
*/
