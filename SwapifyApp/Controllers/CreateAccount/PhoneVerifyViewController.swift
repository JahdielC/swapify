//
//  PhoneVerifyViewController.swift
//  SwapifyApp
//
//  Created by Bilal on 11/5/21.
//

import UIKit

class PhoneVerifyViewController: UIViewController, UITextFieldDelegate {

    // MARK: - Interface Components
    
    @IBOutlet weak var firstTextField       : UITextField!
    @IBOutlet weak var secondTextField      : UITextField!
    @IBOutlet weak var thirdTextField       : UITextField!
    @IBOutlet weak var fourthTextField      : UITextField!
    
    // MARK: - Class Variables
    
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTextField.delegate = self
        secondTextField.delegate = self
        thirdTextField.delegate = self
        fourthTextField.delegate = self
        
    }
    
    // MARK: - Methods
    
    
    // MARK: - IBACTION METHODS
    
    @IBAction func BackButton (_ sender : UIButton){
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func GetStartedButton (_ sender : UIButton){
        
    }
    
    @IBAction func ResendButton (_ sender : UIButton){
        
    }
}
extension PhoneVerifyViewController{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // On inputing value to textfield
        if ((textField.text?.count)! < 1  && string.count > 0){
            
            if(textField == firstTextField)
            {
                secondTextField.becomeFirstResponder()
            }
            if(textField == secondTextField)
            {
                thirdTextField.becomeFirstResponder()
            }
            if(textField == thirdTextField)
            {
                fourthTextField.becomeFirstResponder()
            }
            
            
            textField.text = string
            return false
        }
        else if ((textField.text?.count)! >= 1  && string.count == 0){
            
            // on deleting value from Textfield
            if(textField == secondTextField)
            {
                firstTextField.becomeFirstResponder()
            }
            if(textField == thirdTextField)
            {
                secondTextField.becomeFirstResponder()
            }
            if(textField == fourthTextField)
            {
                thirdTextField.becomeFirstResponder()
            }
            
            textField.text = ""
            return false
        }
        else if ((textField.text?.count)! >= 1  )
        {
            
            textField.text = string
            return false
        }
        return true
    }
}
