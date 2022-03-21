//
//  TopCategoriesViewController.swift
//  SwapifyApp
//
//  Created by Bilal on 11/9/21.
//

import UIKit

class TopCategoriesViewController: UIViewController {

    // MARK: - Interface Components
    
    @IBOutlet weak var categoryCollectionView : UICollectionView!
    @IBOutlet weak var AllBrandsTableView : UITableView!
    
    // MARK: - Class Variables
    
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINibRegisterCell()
        //categoryCollectionView.isHidden = true
        AllBrandsTableView.isHidden = true
    }
    
    // MARK: - Methods
    
    func UINibRegisterCell (){
        
        let nib = UINib(nibName: "TopCategoriesCollectionViewCell", bundle: nil)
        categoryCollectionView?.register(nib, forCellWithReuseIdentifier: "TopCategoriesCollectionViewCell")
        
        let nib2 = UINib(nibName: "AllBrandsTableViewCell", bundle: nil)
        AllBrandsTableView.register(nib2, forCellReuseIdentifier: "AllBrandsTableViewCell")
        
        
    }
    
    // MARK: - IBACTION METHODS
    
    @IBAction func backButton (_ sender : UIButton){
        
        self.navigationController?.popViewController(animated: true)
        
    }

}

extension TopCategoriesViewController : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopCategoriesCollectionViewCell", for: indexPath) as! TopCategoriesCollectionViewCell
        
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 20
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        return CGSize(width: categoryCollectionView.layer.bounds.width-20/2.3, height: categoryCollectionView.layer.bounds.width/1)
//        
//    }
    
}

extension TopCategoriesViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllBrandsTableViewCell") as! AllBrandsTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
