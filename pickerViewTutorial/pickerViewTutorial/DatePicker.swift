//
//  DatePicker.swift
//  pickerViewTutorial
//
//  Created by bùi thành công on 07/07/2022.
//

import UIKit

class DatePicker: UIViewController {

    @IBOutlet weak var tfDate: UITextField!
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        // Do any additional setup after loading the view.
    }

    func config(){
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .automatic
        //set tf chỉ nhận input từ datePicker 
        tfDate.inputView = datePicker
        
        
        //tạo toolBar
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneDatePicker))
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker))
        toolBar.setItems([doneButton,space,cancelButton], animated: true)
        
        tfDate.inputAccessoryView = toolBar
    }
    @objc func doneDatePicker(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, dd MMM yyyy"
        tfDate.text = dateFormatter.string(from: datePicker.date)
        cancelDatePicker()
        
    }
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
    

}
