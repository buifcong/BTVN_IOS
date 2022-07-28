//
//  HomeViewController.swift
//  CallAPIItunes
//
//  Created by bùi thành công on 26/07/2022.
//

import UIKit
import Alamofire
import ObjectMapper
class HomeViewController: UIViewController {
    var arr:[Results] = []{
        didSet{
            collectionView.reloadData()
        }
    }

    @IBOutlet weak var viewSearch: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tfSearch: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        designUI()
        configCollectionView()
        tfSearch.delegate = self
   
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    func designUI(){
        cornerAndBorder(view: [viewSearch], corner: 10, border: false, borderWith: nil, borderColor: nil)
        
    }
    func configCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        let nib1 = UINib(nibName: "FilmCollectionViewCell", bundle: nil)
        collectionView.register(nib1, forCellWithReuseIdentifier: "FilmCollectionViewCell")
    }
    
    


   
}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FilmCollectionViewCell", for: indexPath) as! FilmCollectionViewCell
        let item = arr[indexPath.row]
        cell.item = item
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width/2)-15, height: (collectionView.frame.width/2)+40)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        return .init(top: 0, left: 8, bottom: 0, right: 8)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = FilmViewController()
        vc.film = arr[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }

    
}
extension HomeViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let search = tfSearch.text else {
            print("text field null")
            return true
        }
        let params = ["term":"\(search)","limit":"20"]
        AF.request("https://itunes.apple.com/search", method: .get, parameters: params, encoding: URLEncoding.default, headers: nil, interceptor: nil, requestModifier: nil).responseJSON { response in
            if let result1 = response.value as? [String:Any]{
                print(result1)
                if let result2 = result1["results"] as? [[String:Any]]{
                    self.arr = [Results](JSONArray: result2)
                }
                
            }
        }
        view.endEditing(true)
        return true
    }
}
