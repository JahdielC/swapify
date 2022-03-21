//
//  SignUpFirstViewController.swift
//  SwapifyApp
//
//  Created by Bilal on 11/5/21.
//

import UIKit

class SignUpFirstViewController: UIViewController {

    // MARK: - Interface Components
    
    @IBOutlet weak var phoneTextField       : UITextField!
    @IBOutlet weak var phoneCheckImage      : UIImageView!

    
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
    
    @IBAction func GetStartedButton (_ sender : UIButton){
        
        let vc = MAIN_STORYBOARD.instantiateViewController(identifier: "PhoneVerifyViewController") as! PhoneVerifyViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func countryButton (_ sender : UIButton){
        
    }
    
}


