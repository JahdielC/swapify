//
//  HomeTabViewController.swift
//  SwapifyApp
//
//  Created by Bilal on 11/5/21.
//

import UIKit

class HomeTabViewController: UIViewController {
    
    // MARK: - Interface Components
    

    @IBOutlet weak var bestSeeAll               : UIButton!
    @IBOutlet weak var topSeeAll                : UIButton!
    
    @IBOutlet weak var recentCollectionView     : UICollectionView!
    @IBOutlet weak var bestCollectionView       : UICollectionView!
    @IBOutlet weak var brandCollectionView      : UICollectionView!
    
    @IBOutlet weak var beautyView               : UIView!
    @IBOutlet weak var fashionView              : UIView!
    @IBOutlet weak var filmView                 : UIView!
    @IBOutlet weak var foodView                 : UIView!
    
    @IBOutlet weak var recentPageControl        : UIPageControl!
    @IBOutlet weak var bestPageControl          : UIPageControl!
    
    
    @IBOutlet weak var viewHeightConstraint     : NSLayoutConstraint!
    
    
    // MARK: - Class Variables
    
    var whichCollectionViewScrolled = "" {
        willSet{
            print(newValue)
        }
    }
    
    var isFirstCollectionViewScrolled = false {
        willSet{
            print("First CollectionView Scrolled : \(newValue)")
        }
    }
    var isSecondCollectionViewScrolled = false {
        willSet{
            print("Second CollectionView Scrolled : \(newValue)")
        }
    }
    var isthirdCollectionViewScrolled = false {
        willSet{
            print("Third CollectionView Scrolled : \(newValue)")
        }
    }
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINibRegisterCell()
        viewHeightAdjustment()
        
        recentCollectionView.tag = 1
        bestCollectionView.tag   = 2
        brandCollectionView.tag  = 3
        
    }
    
    
   
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    // MARK: - Methods
    
    func UINibRegisterCell (){
        
        let nib = UINib(nibName: "BrandsCollectionViewCell", bundle: nil)
        recentCollectionView?.register(nib, forCellWithReuseIdentifier: "BrandsCollectionViewCell")
        
        bestCollectionView?.register(nib, forCellWithReuseIdentifier: "BrandsCollectionViewCell")
        
        let brandNib = UINib(nibName: "BrandNameCollectionViewCell", bundle: nil)
        
        brandCollectionView?.register(brandNib, forCellWithReuseIdentifier: "BrandNameCollectionViewCell")
        
    }
    
    // this method is used to manually increase the height of the view
    // multiply the brandCollectionViewCount to brandCollectionViewHeight which is 275
    
    func viewHeightAdjustment (){
        
        viewHeightConstraint.constant = 1345 + 4 * 285
    }
    
    // MARK: - IBACTION METHODS
    
    @IBAction func bestSeeAllButton (_ sender : UIButton){
        
    }
    
    @IBAction func topSeeAllButton (_ sender : UIButton){
        
        let vc = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "TopCategoriesViewController") as! TopCategoriesViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func beautyButton (_ sender : UIButton){
        
    }
    
    @IBAction func fashionButton (_ sender : UIButton){
        
    }
    
    @IBAction func filmButton (_ sender : UIButton){
        
    }
    
    @IBAction func foodButton (_ sender : UIButton){
        
    }
    
    @IBAction func cardsSeeAllButton (_ sender : UIButton){
        
    }
    
    @IBAction func searchlButton (_ sender : UIButton){
        let vc = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "SearchTabViewController") as! SearchTabViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func filterButton (_ sender : UIButton){
        
        let vc = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "FiltersViewController") as! FiltersViewController
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
        
        
    }
    
}

extension HomeTabViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == recentCollectionView {
            return 4
        }
        else if collectionView == bestCollectionView {
            return 4
        }
        else {
            return 4
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == brandCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BrandNameCollectionViewCell", for: indexPath) as! BrandNameCollectionViewCell
            return cell
            
        }
        
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BrandsCollectionViewCell", for: indexPath) as! BrandsCollectionViewCell
            return cell
            
        }
        
    }
    
}

extension HomeTabViewController : UIScrollViewDelegate {
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        print(scrollView.contentOffset)
        if let collectionView = scrollView as? UICollectionView {
            switch collectionView.tag {
            case 1:
                whichCollectionViewScrolled = "First"
                isFirstCollectionViewScrolled = true
                isSecondCollectionViewScrolled = false
                isthirdCollectionViewScrolled = false
                
                let pageIndex = round(collectionView.contentOffset.x/120)
                recentPageControl.currentPage = Int(pageIndex)
                print("\(whichCollectionViewScrolled) ScrollView is Scrolling")
            case 2:
                whichCollectionViewScrolled = "second"
                isFirstCollectionViewScrolled = false
                isSecondCollectionViewScrolled = true
                isthirdCollectionViewScrolled = false
                
                let pageIndex = round(collectionView.contentOffset.x/120)
                bestPageControl.currentPage = Int(pageIndex)
                print("\(whichCollectionViewScrolled) ScrollView is Scrolling")
                
            case 3:
                whichCollectionViewScrolled = "Third"
                isFirstCollectionViewScrolled = false
                isSecondCollectionViewScrolled = false
                isthirdCollectionViewScrolled = true
                print("\(whichCollectionViewScrolled) ScrollView is Scrolling")
                
            default:
                whichCollectionViewScrolled = "unknown"
            }
            
        } else{
            print("cant cast")
        }
    }
}
