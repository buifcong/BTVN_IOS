//
//  ViewController.swift
//  pickerViewTutorial
//
//  Created by bùi thành công on 07/07/2022.
//

import UIKit

class ViewController: UIViewController {
    var timer: Timer?
    var min:Int?
    var sec:Int?
    var arrMins = [0,1,2,3,4,5]
    var arrSecs = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
    @IBOutlet weak var lbTime: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configPickerView()
    }
    func configPickerView(){
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    @IBAction func tapOnStart(_ sender: Any) {
        if timer?.isValid != nil {
            timer?.invalidate()
        }
        if let min = min, let sec = sec {
            var totalSeconds = min * 60 + sec
            lbTime.text = "\(totalSeconds)s"
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
                totalSeconds -= 1
                self.lbTime.text = "\(totalSeconds)s"
                if totalSeconds <= 0{
                    self.timer?.invalidate()
                }
            })
        }
        else {
            let al = UIAlertController(title: "Woops", message: "select minute and second to start", preferredStyle: .alert)
            al.addAction(UIAlertAction(title: "ok", style: .default))
            present(al, animated: true)
        }
    }
    @IBAction func tapOnVC2(_ sender: Any) {
        let vc = DatePicker()
        present(vc, animated: true)
    }
    

}
extension ViewController:UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return arrMins.count
        }else {
            return arrSecs.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return "\(arrMins[row])"
        }
        else {
            return String(arrSecs[row])
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            min = arrMins[row]
        }
        else {
            sec = arrSecs[row]
        }
    }
    
    
}
