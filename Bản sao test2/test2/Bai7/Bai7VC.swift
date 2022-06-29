//
//  Bai7VC.swift
//  test2
//
//  Created by bùi thành công on 29/06/2022.
//

import UIKit

class Bai7VC: UIViewController {
    var view3: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    var view2: UIView = {
       let view = UIView()
        return view
    }()
    var lb1:UILabel = {
        let lb = UILabel()
        lb.text = "profile"
        lb.font = .boldSystemFont(ofSize: 20)
        return lb
    }()
    var lb2:UILabel = {
        let lb = UILabel()
        lb.text = "instagram: zzyen_113"
        lb.font = .boldSystemFont(ofSize: 40)
        lb.numberOfLines = 2
        lb.textAlignment = .center
        lb.textColor = .orange
        return lb
    }()
    var lb3:UILabel = {
        let lb = UILabel()
        lb.text = "Start your search"
        lb.textColor = .white
        lb.backgroundColor = .systemBlue
        lb.textAlignment = .center
        lb.font = .boldSystemFont(ofSize: 20)
        return lb
    }()
    var lb4:UILabel = {
        let lb = UILabel()
        lb.text = "Add Friend and talking with me!"
        lb.textColor = .black

        lb.font = .boldSystemFont(ofSize: 20)
        return lb
    }()
    
    
    
    var bt1: UIButton = {
      let bt = UIButton()
        bt.backgroundColor = .brown
        return bt
    }()
    var bt2: UIButton = {
      let bt = UIButton()
        bt.backgroundColor = .systemBlue
        bt.setTitle("Add friend", for: .normal)
        return bt
    }()
    var bt3: UIButton = {
      let bt = UIButton()
        bt.backgroundColor = .systemOrange
        bt.setTitle("Follow", for: .normal)
        return bt
    }()
    var bt4: UIButton = {
      let bt = UIButton()
        bt.backgroundColor = .gray
        bt.setTitle("Block", for: .normal)
        return bt
    }()
  

    var imageLogo: UIImageView = {
        let im = UIImageView()
        im.image = UIImage(named: "logo")
        return im
    }()
    var image1: UIImageView = {
        let im = UIImageView()
        im.image = UIImage(named: "logo")
        return im
    }()
    var image2: UIImageView = {
        let im = UIImageView()
        im.image = UIImage(named: "logo")
        return im
    }()
    var image3: UIImageView = {
        let im = UIImageView()
        im.image = UIImage(named: "image2")
        return im
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        deSignCode()
        view.addSubview(imageLogo)
        view.addSubview(lb1)
        view.addSubview(image1)
        view.addSubview(image2)
        view.addSubview(view2)
        view2.addSubview(image3)
        view2.addSubview(lb2)
        view2.addSubview(view3)
        view2.addSubview(lb3)
        view3.addSubview(bt2)
        view3.addSubview(bt3)
        view3.addSubview(bt4)
        view3.addSubview(lb4)
        
        
    }
    func deSignCode(){
        view2.backgroundColor = .clear
        image3.clipsToBounds = true
        image3.layer.cornerRadius = 30
        image3.contentMode = .scaleAspectFill
        view3.clipsToBounds = true
        view3.layer.cornerRadius = 30
        view3.layer.borderWidth = 2
        lb3.clipsToBounds = true
        lb3.layer.cornerRadius = 30
        
    }
    override func viewDidLayoutSubviews() {
        super .viewDidLayoutSubviews()
        imageLogo.frame = CGRect(x: 10, y: 20, width: 70, height: 70)
        lb1.frame = CGRect(x: imageLogo.frame.origin.x+70, y: 20, width: 150, height: 70)
        image1.frame = CGRect(x: view.frame.size.width - 80, y: 20, width: 70, height: 70)
        image2.frame = CGRect(x: image1.frame.origin.x - 80, y: 20, width: 70, height: 70)
        view2.frame = CGRect(x: 10, y: 90, width: view.frame.size.width - 20, height: view.frame.size.height - 100)
        image3.frame  = CGRect(x: 0, y: 0, width: view2.frame.size.width, height: view2.frame.size.height)
        lb2.frame = CGRect(x: 100, y: 5, width: 200, height: 150)
        view3.frame = CGRect(x: 5, y: view2.frame.size.height - 205, width: view2.frame.size.width - 10, height: 200)
        lb3.frame = CGRect(x: 0, y: 0, width: 200, height: 60)
        lb3.center = view2.center
        bt2.frame = CGRect(x: 0, y: 0, width: view3.frame.size.width/3, height: 80)
        bt3.frame = CGRect(x: bt2.frame.size.width, y: 0, width: view3.frame.size.width/3, height: 80)
        bt4.frame = CGRect(x: bt3.frame.size.width*2, y: 0, width: view3.frame.size.width/3, height: 80)
        lb4.frame = CGRect(x: 25, y: 80, width: 300, height: 100)

    }
    

}
