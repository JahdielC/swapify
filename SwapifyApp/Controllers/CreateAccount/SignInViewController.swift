//
//  SignInViewController.swift
//  SwapifyApp
//
//  Created by Bilal on 11/4/21.
//

import UIKit

class SignInViewController: UIViewController {

    // MARK: - Interface Components
    
    @IBOutlet weak var emailTextField       : UITextField!
    @IBOutlet weak var passwordTextField    : UITextField!
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
    
    @IBAction func GetStartedButton (_ sender : UIButton){
        
        let vc = MAIN_STORYBOARD.instantiateViewController(identifier: "TabBarController") as! TabBarController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func ForgetButton (_ sender : UIButton){
        
        let vc = MAIN_STORYBOARD.instantiateViewController(identifier: "ResetPasswordViewController") as! ResetPasswordViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func CreateAccountButton (_ sender : UIButton){
        
        let vc = MAIN_STORYBOARD.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func FacebookButton (_ sender : UIButton){
        
        
        
    }
    
    @IBAction func GoogleButton (_ sender : UIButton){
        
        
        
    }
    
    @IBAction func AppleButton (_ sender : UIButton){
        
        
        
    }
    
    @IBAction func ShowPasswordButton (_ sender : UIButton){
        
        
        
    }
    
    

}
