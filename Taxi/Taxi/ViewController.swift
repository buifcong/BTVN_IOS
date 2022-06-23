//
//  ViewController.swift
//  Taxi
//
//  Created by bùi thành công on 23/06/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfMoneys: UITextField!
    
    @IBOutlet weak var btShowKm: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func kilometter(moneys: Float) -> Float{
        if moneys >= (110000+100000+95000){
            return 30 + (moneys-(110000+100000+95000))/9000
        }
        else if moneys >= (110000+100000){
            return 20 + (moneys-(110000+100000))/9500
        }
        else if moneys >= (110000){
            return 10 + (moneys-(110000))/10000
        }
        else {
            return moneys/11000
        }
        
    }

    @IBAction func tapOnShowKm(_ sender: Any) {
        if tfMoneys.text == "" {
            let al = UIAlertController(title: "woop.", message: "please, enter moneys", preferredStyle: .alert)
            al.addAction(UIAlertAction(title: "ok", style: .default))
            present(al, animated: true)
        }
        else{
            let mn = Float(tfMoneys.text!) ?? 0
            let al = UIAlertController(title: "\(kilometter(moneys:mn)) KM", message: "Do you want pay?", preferredStyle: .actionSheet)
            al.addAction(UIAlertAction(title: "MassterCard", style: .default))
            al.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            present(al, animated: true)
        }
            
    }
    
}

