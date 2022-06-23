//
//  ViewController.swift
//  ballRunn
//
//  Created by bùi thành công on 17/06/2022.
//

import UIKit


class ViewController: UIViewController {
    var timer :Timer?
    var a: CGFloat = 0
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        design()
        ballGo()
        // Do any additional setup after loading the view.
    }
    func design(){
        view2.layer.cornerRadius = 50
        view2.layer.masksToBounds = true
        view3.layer.cornerRadius = 10
        view3.layer.masksToBounds = true
    }
    override func viewDidAppear(_ animated: Bool) {
        runRun()
    }
    func ballGo(){
        timer = Timer.scheduledTimer(withTimeInterval: 0.003, repeats: true) { _ in
            self.a += 1
            self.view2.transform = CGAffineTransform(rotationAngle: -.pi * self.a/360)
            
        }
    }
    func runRun(){
        
        let swipe1 = UISwipeGestureRecognizer(target: self, action: #selector(downSwipe))
        swipe1.direction = .down
        view2.addGestureRecognizer(swipe1)
        let swipe2 = UISwipeGestureRecognizer(target: self, action: #selector(upSwipe))
        swipe2.direction = .up
        view2.addGestureRecognizer(swipe2)
    }
    @objc func downSwipe(){
        //        let poin = CGPoint(x: 50, y: 50)
        let poin1 = CGPoint(x: view.frame.size.width - 50, y: 50)
        let poin2 = CGPoint(x: view.frame.size.width - 50, y: (view.frame.size.height)/3 - 50 )
        let poin3 = CGPoint(x: 50, y: (view.frame.size.height)/3 - 50 )
        let poin4 = CGPoint(x: 50, y: (view.frame.size.height)/3*2)
        let poin5 = CGPoint(x: view.frame.size.width-50, y: (view.frame.size.height)/3*2)
        let poin6 = CGPoint(x: view.frame.size.width-50, y:view.frame.size.height-50 )
        let poin7 = CGPoint(x: 50, y: view.frame.size.height-50)
        UIView.animate(withDuration: 3) {
            self.view2.center = poin1
        } completion: { _ in
            UIView.animate(withDuration: 3) {
                self.view2.center = poin2
            } completion: { _ in
                UIView.animate(withDuration: 3) {
                    self.view2.center = poin3
                } completion: { _ in
                    UIView.animate(withDuration: 3) {
                        self.view2.center = poin4
                    } completion: { _ in
                        UIView.animate(withDuration: 3) {
                            self.view2.center = poin5
                        } completion: { _ in
                            UIView.animate(withDuration: 3) {
                                self.view2.center = poin6
                            } completion: { _ in
                                UIView.animate(withDuration: 3) {
                                    self.view2.center = poin7
                                }
                            }
                        }
                    }
                }
            }
        }
        
    }
    @objc func upSwipe(){
        let poin = CGPoint(x: 50, y: 50)
        let poin1 = CGPoint(x: view.frame.size.width - 50, y: 50)
        let poin2 = CGPoint(x: view.frame.size.width - 50, y: (view.frame.size.height)/3 - 50 )
        let poin3 = CGPoint(x: 50, y: (view.frame.size.height)/3 )
        let poin4 = CGPoint(x: 50, y: (view.frame.size.height)/3*2)
        let poin5 = CGPoint(x: view.frame.size.width-50, y: (view.frame.size.height)/3*2)
        //        let poin6 = CGPoint(x: view.frame.size.width-50, y:view.frame.size.height-50 )
        let poin7 = CGPoint(x: 50, y: view.frame.size.height-50)
        if view2.center == poin7 {
            UIView.animate(withDuration: 3) {
                self.view2.center = poin4
            } completion: { _ in
                UIView.animate(withDuration: 3) {
                    self.view2.center = poin5
                } completion: { _ in
                    UIView.animate(withDuration: 3) {
                        self.view2.center = poin2
                    } completion: { _ in
                        UIView.animate(withDuration: 3) {
                            self.view2.center = poin3
                        } completion: { _ in
                            UIView.animate(withDuration: 3) {
                                self.view2.center = poin
                            } completion: { _ in
                                UIView.animate(withDuration: 3) {
                                    self.view2.center = poin1
                                }
                                
                            }
                        }
                    }
                }
            }
        }
    }


}

