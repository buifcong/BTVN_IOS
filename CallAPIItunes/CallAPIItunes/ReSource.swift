//
//  ReSource.swift
//  CallAPIItunes
//
//  Created by bùi thành công on 26/07/2022.
//

import Foundation
import UIKit
func cornerAndBorder(view:[UIView],corner:CGFloat,border:Bool,borderWith:CGFloat?,borderColor:CGColor?){
    for view in view {
        view.clipsToBounds = true
        view.layer.cornerRadius = corner
        if border == true {
            
            view.layer.borderWidth = borderWith ?? 0
            view.layer.borderColor = borderColor
        }
    }
}

func leftAndRightView(textField:[UITextField], x:CGFloat, y:CGFloat, width:CGFloat, heigh:CGFloat){
    for tf in textField {
        tf.leftView = UIView(frame: CGRect(x: x, y: y, width: width, height: heigh))
        tf.leftViewMode = .always
        tf.rightView = UIView(frame: CGRect(x: x, y: y, width: width, height: heigh))
        tf.rightViewMode = .always
        
    }
    
}
func alertNoActionType(title:String?,message:String?,titleAction:String)->UIAlertController{
    let al = UIAlertController(title: title, message: message, preferredStyle: .alert)
    al.addAction(UIAlertAction(title: titleAction, style: .default))
    return al
}

extension UIImageView {
    func load(url: String?) {
        if let url = url, let link = URL(string: url) {
            DispatchQueue.global().async { [weak self] in
                if let data = try? Data(contentsOf: link) {
                    if let image = UIImage(data: data) {
                        DispatchQueue.main.async {
                            self?.image = image
                        }
                    }
                }
            }
        }
    }
}
