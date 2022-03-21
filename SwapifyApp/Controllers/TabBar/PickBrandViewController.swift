//
//  PickBrandViewController.swift
//  SwapifyApp
//
//  Created by Apple on 14/03/2022.
//

import UIKit

class PickBrandViewController: UIViewController {

    @IBOutlet weak var brandpickTableView : UITableView!
    
    @IBOutlet weak var pickBtn: UIButton!
    @IBOutlet weak var blnceBtn: UIButton!
    @IBOutlet weak var offerpriceBtn: UIButton!
    
    @IBOutlet weak var tbleViewHeight: NSLayoutConstraint!
    @IBOutlet weak var blnceViewHeight: NSLayoutConstraint!

    @IBOutlet weak var blnceView: UIView!
    @IBOutlet weak var offerPricView: UIView!
    @IBOutlet weak var priceViewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UINibRegisterCell ()
        blnceView.alpha = 0
        offerPricView.alpha = 0
        blnceViewHeight.constant = 0
        priceViewHeight.constant = 0
    }
    
    // MARK: - Methods
    func UINibRegisterCell (){
        
        let nib = UINib(nibName: "PickbrandTableViewCell", bundle: nil)
        brandpickTableView?.register(nib, forCellReuseIdentifier: "PickbrandTableViewCell")
        
    }
    
    // MARK: - Actions
    @IBAction func cancelBtnAction(_ sender: Any) {
    }
    
    
    
    
    // MARK: - IBACTION METHODS
    
    
    @IBAction func confirmButton (_ sender : UIButton ){
                
        let vc = MAIN_STORYBOARD.instantiateViewController(identifier: "CheckingGiftCardViewController") as! CheckingGiftCardViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    
    @IBAction func pickbrandBtn(_ sender: Any) {
        if pickBtn.isSelected == true{
            pickBtn.isSelected = false
            tbleViewHeight.constant = 0
        }else{
            pickBtn.isSelected = true
            tbleViewHeight.constant = 240
        }
    }
    
    @IBAction func BalanceBtn(_ sender: Any) {
        if blnceBtn.isSelected == true{
            blnceBtn.isSelected = false
            blnceViewHeight.constant = 0
            blnceView.isHidden = true
        }else{
            blnceView.alpha = 1
            blnceBtn.isSelected = true
            blnceViewHeight.constant = 220
            blnceView.isHidden = false
        }
    }
    
    @IBAction func PriceBtn(_ sender: Any) {
        if offerpriceBtn.isSelected == true{
            offerpriceBtn.isSelected = false
            priceViewHeight.constant = 0
            offerPricView.isHidden = true
        }else{
            offerPricView.alpha = 1
            offerpriceBtn.isSelected = true
            priceViewHeight.constant = 300
            offerPricView.isHidden = false
        }
        
    }
    
}
extension PickBrandViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PickbrandTableViewCell") as! PickbrandTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
