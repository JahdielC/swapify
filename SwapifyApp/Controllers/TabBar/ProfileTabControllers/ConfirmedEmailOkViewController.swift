//
//  ConfirmedEmailOkViewController.swift
//  SwapifyApp
//
//  Created by Apple on 09/03/2022.
//

import UIKit

class ConfirmedEmailOkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - IBACTION METHODS
    @IBAction func backBtnAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
