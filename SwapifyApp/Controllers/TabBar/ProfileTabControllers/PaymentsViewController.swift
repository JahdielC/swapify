//
//  PaymentsViewController.swift
//  SwapifyApp
//
//  Created by Apple on 09/03/2022.
//

import UIKit

class PaymentsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func linkBantBtnAction(_ sender: Any) {
        let vc = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "BankDeatailsViewController") as! BankDeatailsViewController
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
    @IBAction func CancelBtnAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
