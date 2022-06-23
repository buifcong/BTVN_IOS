//
//  EditBook.swift
//  BookStoryBoard
//
//  Created by bùi thành công on 23/06/2022.
//

import UIKit

class EditBook: UIViewController {
    var book: Book!
    var handleEditBook: ((Book) ->Void)?
    @IBOutlet weak var tfNameBook: UITextField!
    
    @IBOutlet weak var btEdit: UIButton!
    @IBOutlet weak var tfPrice: UITextField!
    @IBOutlet weak var tfAuthor: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit"
        tfNameBook.text = book.name
        tfAuthor.text = book.author
        tfPrice.text = book.price
 
    }
    func setUpTextfield(){

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    @IBAction func tapOnEdit(_ sender: Any) {
        view.endEditing(true)
        if tfNameBook.text == "" || tfAuthor.text == "" || tfPrice.text == "" {
            let al = UIAlertController(title: "Woop.", message: "Please, enter full information", preferredStyle: .alert)
            al.addAction(UIAlertAction(title: "ok", style: .default))
            present(al, animated: true)
        }
        else {
            let bookSave = Book(name: tfNameBook.text!, author: tfAuthor.text!, price: tfPrice.text!)
            let al = UIAlertController(title: nil, message: "Do you want save", preferredStyle: .actionSheet)
            al.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            al.addAction(UIAlertAction(title: "Save", style: .default, handler: { _ in
                self.handleEditBook?(bookSave)
                self.navigationController?.popViewController(animated: true)
            }))
            present(al, animated: true)
        }
    }
    

}

