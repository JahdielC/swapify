//
//  ProfileInfiViewController.swift
//  SwapifyApp
//
//  Created by Apple on 09/03/2022.
//

import UIKit

class ProfileInfiViewController: UIViewController, VCdelegate {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBACTION METHODS
    @IBAction func backBtnAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func updateBtnAction(_ sender: Any) {
        let vc = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "ConfirmEmailViewController") as! ConfirmEmailViewController
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .overCurrentContext
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
       
    }
    
    
    func CalledConfirmedVc() {
        let vc = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "ConfirmedEmailOkViewController") as! ConfirmedEmailOkViewController
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
}
