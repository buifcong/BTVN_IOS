//
//  ViewController.swift
//  TimePicker
//
//  Created by bùi thành công on 09/07/2022.
//

import UIKit

class ViewController: UIViewController {
    let arr: [String] = ["never","Hourly","Every day","Every week","Every month", "Every year"]
    @IBOutlet weak var pickerRepeat: UIPickerView!
    @IBOutlet weak var tfTime: UITextField!
    let datePicker = UIDatePicker()
    let timePicker = UIDatePicker()
    @IBOutlet weak var tfRepeat: UITextField!
    @IBOutlet weak var tfHour: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Set Reminder"
        SetUpTabbar()
        setUpTextField()
        pickerRepeat.isHidden = true
        tfRepeat.delegate = self
        pickerRepeat.delegate = self
        pickerRepeat.dataSource = self
        
    }
    func SetUpTabbar(){
        let save = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(tapOnSave))
        navigationItem.rightBarButtonItem = save
    }
    func setUpTextField(){
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .inline
        timePicker.datePickerMode = .time
        timePicker.preferredDatePickerStyle = .wheels
        tfTime.inputView = datePicker
        tfHour.inputView = timePicker
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneDatePicker))
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker))
        toolBar.setItems([doneButton,space,cancelButton], animated: true)
        
        tfTime.inputAccessoryView = toolBar
        
        
        let toolBar2 = UIToolbar()
        toolBar2.sizeToFit()
        let doneButton2 = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneHourPicker))
        let space2 = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton2 = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelHourPicker))
        toolBar2.setItems([doneButton2,space2,cancelButton2], animated: true)
        
        tfHour.inputAccessoryView = toolBar2
    }
    @objc func tapOnSave(){
        
    }
    @objc func doneDatePicker(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, dd MMM yyyy"
        tfTime.text = dateFormatter.string(from: datePicker.date)
        cancelDatePicker()
    }
    @objc func cancelDatePicker(){
        view.endEditing(true)
    }
    @objc func doneHourPicker(){
        let dateFormatter2 = DateFormatter()
        dateFormatter2.dateFormat = "HH:mm"
        tfHour.text = dateFormatter2.string(from: timePicker.date)
        cancelHourPicker()
    }
    @objc func cancelHourPicker(){
        view.endEditing(true)
    }


}
extension ViewController: UITextFieldDelegate{
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == tfRepeat{
            pickerRepeat.isHidden = false
            return false
        }
        return true
    }
}
extension ViewController: UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tfRepeat.text = arr[row]
        pickerRepeat.isHidden = true
    }
    
    
}
