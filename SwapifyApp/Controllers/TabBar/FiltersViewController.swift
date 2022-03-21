//
//  FiltersViewController.swift
//  SwapifyApp
//
//  Created by Apple on 08/03/2022.
//

import UIKit

class FiltersViewController: UIViewController {
    
    
    @IBOutlet weak var FiltercategoryCollectionView : UICollectionView!
    @IBOutlet weak var FiltercPriceCollectionView : UICollectionView!
    
    
    @IBOutlet weak var categoryView: UIView!
    @IBOutlet weak var catLineView: UIView!
    @IBOutlet weak var sortbyView: UIView!
    @IBOutlet weak var sortLineView: UIView!
    @IBOutlet weak var priceView: UIView!
    @IBOutlet weak var priceLineview: UIView!
    
    @IBOutlet weak var categoryBtn: UIButton!
    @IBOutlet weak var sortbyBtn: UIButton!
    @IBOutlet weak var priceBtn: UIButton!
    
    
    @IBOutlet weak var sortpriceImg: UIImageView!
    @IBOutlet weak var recentSortimg: UIImageView!
    @IBOutlet weak var sortPopularImg: UIImageView!
    
    
    var indexP = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        UINibRegisterCell()
        
        sortbyView.isHidden = true
        priceView.isHidden = true
        sortLineView.isHidden = true
        priceLineview.isHidden = true
    }
    
    // MARK: - Methods
    
    func UINibRegisterCell (){
        
        let nib = UINib(nibName: "CategoryFilterCollectionViewCell", bundle: nil)
        FiltercategoryCollectionView?.register(nib, forCellWithReuseIdentifier: "CategoryFilterCollectionViewCell")
        
        let nib2 = UINib(nibName: "PriceFilterCollectionViewCell", bundle: nil)
        FiltercPriceCollectionView?.register(nib2, forCellWithReuseIdentifier: "PriceFilterCollectionViewCell")
        
    }
    
    @IBAction func crossBtnAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func clearBtnAction(_ sender: Any) {
    }
    
    @IBAction func categoryBtnAction(_ sender: Any) {
        categoryView.isHidden = false
        catLineView.isHidden = false
        sortbyView.isHidden = true
        sortLineView.isHidden = true
        priceView.isHidden = true
        priceLineview.isHidden = true
        
        categoryBtn.setTitleColor(#colorLiteral(red: 0.9334495664, green: 0.3899522722, blue: 0.2985906601, alpha: 1), for: .normal)
        sortbyBtn.setTitleColor(#colorLiteral(red: 0.5141925812, green: 0.5142051578, blue: 0.5141984224, alpha: 1), for: .normal)
        priceBtn.setTitleColor(#colorLiteral(red: 0.5141925812, green: 0.5142051578, blue: 0.5141984224, alpha: 1), for: .normal)
    }
    
    @IBAction func sortBtnAction(_ sender: Any) {
        categoryView.isHidden = true
        catLineView.isHidden = true
        sortbyView.isHidden = false
        sortLineView.isHidden = false
        priceView.isHidden = true
        priceLineview.isHidden = true
        categoryBtn.setTitleColor(#colorLiteral(red: 0.5141925812, green: 0.5142051578, blue: 0.5141984224, alpha: 1), for: .normal)
        sortbyBtn.setTitleColor(#colorLiteral(red: 0.9334495664, green: 0.3899522722, blue: 0.2985906601, alpha: 1), for: .normal)
        priceBtn.setTitleColor(#colorLiteral(red: 0.5141925812, green: 0.5142051578, blue: 0.5141984224, alpha: 1), for: .normal)
        
    }
    
    @IBAction func priceBtnAction(_ sender: Any) {
        categoryView.isHidden = true
        catLineView.isHidden = true
        sortbyView.isHidden = true
        sortLineView.isHidden = true
        priceView.isHidden = false
        priceLineview.isHidden = false
        
        categoryBtn.setTitleColor(#colorLiteral(red: 0.5141925812, green: 0.5142051578, blue: 0.5141984224, alpha: 1), for: .normal)
        sortbyBtn.setTitleColor(#colorLiteral(red: 0.5141925812, green: 0.5142051578, blue: 0.5141984224, alpha: 1), for: .normal)
        priceBtn.setTitleColor(#colorLiteral(red: 0.9334495664, green: 0.3899522722, blue: 0.2985906601, alpha: 1), for: .normal)
    }
    
    @IBAction func completeBtnAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sortPriceAction(_ sender: Any) {
        sortpriceImg.image = UIImage(named: "tick-icon")
        recentSortimg.image = UIImage(named: "")
        sortPopularImg.image = UIImage(named: "")
    }
    
    @IBAction func sortRecentAction(_ sender: Any) {
        sortpriceImg.image = UIImage(named: "")
        recentSortimg.image = UIImage(named: "tick-icon")
        sortPopularImg.image = UIImage(named: "")
    }
    
    @IBAction func sortPopularAction(_ sender: Any) {
        sortpriceImg.image = UIImage(named: "")
        recentSortimg.image = UIImage(named: "")
        sortPopularImg.image = UIImage(named: "tick-icon")
    }
    
    
    
    @objc func priceRangeSelect(sender: UIButton){
        indexP = sender.tag
        FiltercPriceCollectionView.reloadData()
        
    }
}
extension FiltersViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == FiltercategoryCollectionView {
            return 5
        }else{
            return 8
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == FiltercategoryCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryFilterCollectionViewCell", for: indexPath) as! CategoryFilterCollectionViewCell
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PriceFilterCollectionViewCell", for: indexPath) as! PriceFilterCollectionViewCell
            cell.prictRangeBtn.addTarget(self, action: #selector(priceRangeSelect(sender:)), for: .touchUpInside)
            cell.prictRangeBtn.tag = indexPath.row
            
            if indexP == indexPath.row {
                cell.priceRangeView.backgroundColor = #colorLiteral(red: 0.9334495664, green: 0.3899522722, blue: 0.2985906601, alpha: 1)
                cell.priceRangeLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                
            }else{
                cell.priceRangeView.backgroundColor = #colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)
                cell.priceRangeLbl.textColor = #colorLiteral(red: 0.9334495664, green: 0.3899522722, blue: 0.2985906601, alpha: 1)
            }
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == FiltercategoryCollectionView {
            return CGSize(width: collectionView.layer.bounds.width/3.4, height: collectionView.layer.bounds.height - 10/1);
        }else{
            return CGSize(width: collectionView.layer.bounds.width/5, height: collectionView.layer.bounds.height - 10/1);
        }
    }
    
}
