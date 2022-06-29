//
//  ViewController.swift
//  BookStoryBoard
//
//  Created by bùi thành công on 22/06/2022.
//

import UIKit

class ViewController: UIViewController {
    var arrBook : [Book] = []

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Show Book"
        let add = UIBarButtonItem(title: "add", style: .plain, target: self, action: #selector(tapOnAdd))
        navigationItem.rightBarButtonItem = add
        setupTableView()
        bindData()
    }
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: "BookCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "bookCell")
    }
    func bindData(){
        let b1 = Book(name: "Dế Mèn Phiêu Lưu Kí", author: "Tô Hoài", price: "12000")
        let b2 = Book(name: "English", author: "Công", price: "20000")
        let b3 = Book(name: "Math and Chemistry", author: "Alex Edward", price: "32000")
        arrBook.append(b1)
        arrBook.append(b2)
        arrBook.append(b3)
        tableView.reloadData()
        
    }
    

    @objc func tapOnAdd(){
        let vc = AddBook()
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrBook.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell") as! BookCell
        let data = arrBook[indexPath.row]
        cell.lbNameBook.text = "\(data.name)"
        cell.lbPrice.text = "Price: \(data.price)"
        cell.lbAuthor.text = "Author: \(data.author)"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 87
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let editAction = UIContextualAction(style: .normal, title: "edit") { (ac, View, success:(Bool) ->Void) in success(true)
            let vc = EditBook()
            vc.book = self.arrBook[indexPath.row]
            vc.handleEditBook = { result in
                self.arrBook[indexPath.row].name = result.name
                self.arrBook[indexPath.row].author = result.author
                self.arrBook[indexPath.row].price = result.price
                self.tableView.reloadData()
            }
            self.navigationController?.pushViewController(vc, animated: true)
        }
        editAction.backgroundColor = .blue
        return UISwipeActionsConfiguration(actions: [editAction])
    }
    
}
extension ViewController: addBookDelegate {
    func addNewBook(book: Book) {
        arrBook.append(book)
        tableView.reloadData()
    }
    
    
}
