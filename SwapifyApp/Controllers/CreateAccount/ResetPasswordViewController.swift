//
//  ResetPasswordViewController.swift
//  SwapifyApp
//
//  Created by Bilal on 11/5/21.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    // MARK: - Interface Components
    
    @IBOutlet weak var emailTextField       : UITextField!
    @IBOutlet weak var emailCheckImage      : UIImageView!

    
    // MARK: - Class Variables
    
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Methods
    
    
    // MARK: - IBACTION METHODS
    
    @IBAction func BackButton (_ sender : UIButton){
        
        self.navigationController?.popViewController(animated: true)

    }
    
    @IBAction func ResetPasswordButton (_ sender : UIButton){
        
    }
    
    @IBAction func countryCodeButton (_ sender : UIButton){
        
    }
}
