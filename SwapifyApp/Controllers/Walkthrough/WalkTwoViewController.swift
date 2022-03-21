//
//  WalkTwoViewController.swift
//  SwapifyApp
//
//  Created by Bilal on 11/4/21.
//

import UIKit

class WalkTwoViewController: UIViewController {

    // MARK: - Interface Components
    
    
    // MARK: - Class Variables
    
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SwipeRecognition()

    }
    
    // MARK: - Methods
    
    func SwipeRecognition (){
        
        self.swipeWalkViewController(WalkView: self)
    }
    
    // MARK: - IBACTION METHODS
    
    @IBAction func GetStartedButton (_ sender : UIButton ){
        
        let vc = MAIN_STORYBOARD.instantiateViewController(identifier: "SignInViewController") as! SignInViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func SkipButton (_ sender : UIButton ){
        
        let vc = MAIN_STORYBOARD.instantiateViewController(identifier: "SignInViewController") as! SignInViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
}
