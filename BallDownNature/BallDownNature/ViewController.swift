//
//  ViewController.swift
//  BallDownNature
//
//  Created by Thien Tung on 16/04/2022.
//

import UIKit

class ViewController: UIViewController {
    
    // View quả bóng
    var ballView: UIView!
    // Kiểm tra bóng đi lên hay xuống
    var checkIsDown: Bool = true
    // Các thông số vận tốc, gia tốc, thời gian
    var v: CGFloat = 0
    var a: CGFloat = 10
    var t: CGFloat = 0.01
    // Độ cao tối đa
    var h: CGFloat! = 0
    // Timer
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBallView()
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(t), target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
    }
    
    func createBallView() {
        ballView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        ballView.center.x = view.center.x
        ballView.backgroundColor = .brown
        ballView.clipsToBounds = true
        ballView.layer.cornerRadius = 50
        view.addSubview(ballView)
    }
    
    @objc func runTimer(){
        // Kiểm tra xem bóng đang rơi xuống hay đi lên
        if checkIsDown{
            // Nếu rơi xuống => vận tốc tăng dần
            v += a * t
            // Cộng thêm quãng đường đi được là v * t
            self.ballView.frame.origin.y += v * t * 500
            // Kiểm tra nếu bóng đã chạm đáy
            if self.ballView.frame.maxY >= self.view.bounds.maxY {
                // Đổi hướng thành đi lên
                checkIsDown = !checkIsDown
                // Nếu quả bóng đã dừng lại, thì huỷ timer
                if h >= self.view.frame.maxY {
                    timer.invalidate()
                }
            }
        } else {
            // Nếu bóng đi lên => Vận tốc giảm dần
            v -= a * t
            // Thay đổi độ cao của quả bóng theo thời gian t
            self.ballView.frame.origin.y -= v * t * 500
            // v giảm dần, nếu v = 0 => bóng dừng lại và rơi xuống
            if self.v <= 0 {
                v = 0
                // Đổi hướng thành rơi xuống
                checkIsDown = !checkIsDown
                // Gán độ cao cực đại mới
                h = self.ballView.frame.maxY
            }
        }
    }
}

