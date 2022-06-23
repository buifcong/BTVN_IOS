//
//  AddBook.swift
//  BookStoryBoard
//
//  Created by bùi thành công on 22/06/2022.
//

import UIKit
protocol addBookDelegate {
    func addNewBook(book:Book)
}

class AddBook: UIViewController {
    var delegate: addBookDelegate?
    @IBOutlet weak var tfNameBook: UITextField!
    
    @IBOutlet weak var btAddBook: UIButton!
    @IBOutlet weak var tfPrice: UITextField!
    @IBOutlet weak var tfAuthor: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add Book"
        btAddBook.layer.cornerRadius = 15
        btAddBook.layer.masksToBounds = true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }


    @IBAction func tapOnAdd(_ sender: Any) {
        view.endEditing(true)
        if tfNameBook.text == "" || tfPrice.text == "" || tfAuthor.text == ""{
            let al = UIAlertController(title: "Woop.", message: "Please, enter full information", preferredStyle: .alert)
            al.addAction(UIAlertAction(title: "ok", style: .default))
            present(al, animated: true)
        }
        else {
            let al = UIAlertController(title: nil, message: "Do you want to add", preferredStyle: .actionSheet)
            al.addAction(UIAlertAction (title: "Add book", style: .default, handler: { _ in
                let book = Book(name: self.tfNameBook.text!, author: self.tfAuthor.text!, price: self.tfPrice.text!)
                self.delegate?.addNewBook(book: book)
                
                self.navigationController?.popViewController(animated: true)
            }))
            al.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            present(al, animated: true)
        }
    }
    
}
