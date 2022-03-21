//
//  SignUpViewController.swift
//  SwapifyApp
//
//  Created by Bilal on 11/5/21.
//

import UIKit

class SignUpViewController: UIViewController {

    // MARK: - Interface Components
    
    @IBOutlet weak var nameTextField        : UITextField!
    @IBOutlet weak var emailTextField       : UITextField!
    @IBOutlet weak var passwordTextField    : UITextField!
    @IBOutlet weak var nameCheckImage       : UIImageView!
    @IBOutlet weak var emailCheckImage      : UIImageView!
    @IBOutlet weak var passwordCheckImage   : UIImageView!

    
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
    
    @IBAction func FacebookButton (_ sender : UIButton){
        
    }
    
    @IBAction func GoogleButton (_ sender : UIButton){
        
    }
    
    @IBAction func AppleButton (_ sender : UIButton){
        
    }
    
    @IBAction func SignUpButton (_ sender : UIButton){
        
        let vc = MAIN_STORYBOARD.instantiateViewController(identifier: "SignUpFirstViewController") as! SignUpFirstViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func SignInButton (_ sender : UIButton){
        
        let vc = MAIN_STORYBOARD.instantiateViewController(identifier: "SignInViewController") as! SignInViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }

    @IBAction func ShowPasswordButton (_ sender : UIButton){
        
    }
    
}
