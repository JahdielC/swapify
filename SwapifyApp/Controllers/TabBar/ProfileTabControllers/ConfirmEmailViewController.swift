//
//  ConfirmEmailViewController.swift
//  SwapifyApp
//
//  Created by Apple on 09/03/2022.
//

import UIKit

protocol VCdelegate: class {
    func CalledConfirmedVc()
}

class ConfirmEmailViewController: UIViewController {

    var delegate:VCdelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - IBACTION METHODS
    @IBAction func VerifyBtnAction(_ sender: Any) {
        
        self.dismiss(animated: true){
            self.delegate.CalledConfirmedVc()
        }
    }

}
