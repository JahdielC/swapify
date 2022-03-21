//
//  ProfileTabViewController.swift
//  SwapifyApp
//
//  Created by Bilal on 11/5/21.
//

import UIKit

class ProfileTabViewController: UIViewController {

    // MARK: - Interface Components
    
    
    // MARK: - Class Variables
    
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Methods
    
    
    // MARK: - IBACTION METHODS
    @IBAction func profileBtnAction(_ sender: Any) {
        let vc = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "ProfileInfiViewController") as! ProfileInfiViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func changePassbtnAction(_ sender: Any) {
        let vc = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "ChangePasswordViewController") as! ChangePasswordViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func paymentBtnAction(_ sender: Any) {
        
        let vc = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "PaymentsViewController") as! PaymentsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func giftCardbtnAction(_ sender: Any) {
        
        let vc = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "OrderdetailsViewController") as! OrderdetailsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

