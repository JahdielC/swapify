//
//  CheckingGiftCardViewController.swift
//  SwapifyApp
//
//  Created by Apple on 17/03/2022.
//

import UIKit

class CheckingGiftCardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // MARK: - IBACTION METHODS
    
    
    @IBAction func backHomeButton (_ sender : UIButton ){
        
        
        let vc = MAIN_STORYBOARD.instantiateViewController(identifier: "GiftCardViewController") as! GiftCardViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }


}
