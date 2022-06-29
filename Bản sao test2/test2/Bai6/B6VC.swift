//
//  B6VC.swift
//  test2
//
//  Created by bùi thành công on 29/06/2022.
//

import UIKit

class B6VC: UIViewController {
    var timer: Timer?
    var timer1: Timer?
    var timer2: Timer?
    var timer3: Timer?

    @IBOutlet weak var viewBall: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewBall.clipsToBounds = true
        viewBall.layer.cornerRadius = 50

    }
    override func viewDidAppear(_ animated: Bool) {
    ballRun()
    }
    func ballRun(){
        timer = Timer.scheduledTimer(withTimeInterval: 0.0001, repeats: true, block: { _ in
            self.viewBall.frame.origin.x += 0.05
            if self.viewBall.frame.maxX >= self.view.frame.maxX{
                self.timer?.invalidate()
                self.ballRun1()
            }
        })
    }
    func ballRun1(){
        timer1 = Timer.scheduledTimer(withTimeInterval: 0.0001, repeats: true, block: { _ in
            self.viewBall.frame.origin.x -= 0.0212
            self.viewBall.frame.origin.y += 0.05
            if self.viewBall.frame.maxY >= self.view.frame.maxY{
            self.timer1?.invalidate()
                self.ballRun2()
            }
        })
    }
    func ballRun2(){
        timer2 = Timer.scheduledTimer(withTimeInterval: 0.0001, repeats: true, block: { _ in
            self.viewBall.frame.origin.x += 0.05
            if self.viewBall.frame.maxX >= self.view.frame.maxX{
                self.timer2?.invalidate()
                self.ballRun3()
            }
        })
    }
    func ballRun3(){
        timer3 = Timer.scheduledTimer(withTimeInterval: 0.0001, repeats: true, block: { _ in
            self.viewBall.frame.origin.x -= 0.0212
            self.viewBall.frame.origin.y -= 0.05
            if self.viewBall.frame.minY <= self.view.frame.minY{
            self.timer3?.invalidate()
            }
        })
    }



}
