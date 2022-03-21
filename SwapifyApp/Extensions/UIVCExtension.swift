//
//  UIVCExtension.swift
//  SwapifyApp
//
//  Created by Bilal on 11/4/21.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showToast(message : String) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 150, y: self.view.frame.size.height-50, width: 300, height: 35))
        toastLabel.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        toastLabel.textColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 15.0, delay: 0.5, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
    
    func showAlert(title: String = APP_NAME, message: String) {
        
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let oKAction = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        )
        
        alertController.addAction(oKAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    func showAlertWithAction(
        title: String = APP_NAME,
        message: String,
        completion: @escaping(_ isCompleted: Bool)->()
    )
    {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Ok", style: .default) { (OkAction) in
            completion(true)
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func showDefaultSpinner(onView : UIView) {
        let spinnerView = UIView.init(
            frame: onView.bounds
        )
        
        let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
        
        activityIndicator.startAnimating()
        activityIndicator.center = spinnerView.center
        
        DispatchQueue.main.async {
            spinnerView.addSubview(activityIndicator)
            onView.addSubview(spinnerView)
        }
        
        SPINNER = spinnerView
    }
    
    func showSpinner(onView : UIView, title: String = "Loading...") {
        let spinnerView = UIView.init(
            frame: onView.bounds
        )
        spinnerView.backgroundColor = #colorLiteral(red: 0.4078431373, green: 0.4588235294, blue: 0.8156862745, alpha: 0.5)
        
        let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
        
        activityIndicator.startAnimating()
        activityIndicator.center = spinnerView.center
        
        let lableY     = activityIndicator.frame.origin.y +                                       activityIndicator.frame.size.height
        
        let lableWidth = spinnerView.frame.width
        
        let lable = UILabel(
            frame: CGRect(
                x       : 0.0       ,
                y      : lableY    ,
                width  : lableWidth,
                height : 40
            )
        )
        
        lable.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        lable.text          = title
        lable.textAlignment = .center
        lable.font          = UIFont(name: "Avenir Next Bold", size: 14.0)
        
        DispatchQueue.main.async {
            spinnerView.addSubview(lable)
            spinnerView.addSubview(activityIndicator)
            onView.addSubview(spinnerView)
        }
        
        SPINNER = spinnerView
    }
    
    func removeSpinner() {
        SPINNER?.removeFromSuperview()
        SPINNER = nil
    }
    
    func hideKeyboard() {
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    func swipeWalkViewController(WalkView: UIViewController){
        let swipeSelector = #selector(presentWalkView(_:))
        let swipeLeftGesture  = UISwipeGestureRecognizer(
            target: self,
            action: swipeSelector
        )
        let swipeRightGesture  = UISwipeGestureRecognizer(
            target: self,
            action: swipeSelector
        )
        
        swipeLeftGesture.direction    = .left
        swipeRightGesture.direction   = .right
        WalkView.view.isUserInteractionEnabled  = true
        WalkView.view.addGestureRecognizer(swipeLeftGesture)
        WalkView.view.addGestureRecognizer(swipeRightGesture)
    }
    
    //Present Walk Viewcontroller screen
    @objc func presentWalkView(_ sender: UISwipeGestureRecognizer){
        
        if let vc = self as? WalkOneViewController {
            if sender.direction == .left {
                
                UIView.animate(
                    withDuration: 2.0,
                    delay: 0.5,
                    options: .curveEaseIn,
                    animations: {
                        
                        let controller = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "WalkTwoViewController") as! WalkTwoViewController
                        self.navigationController?.pushViewController(controller, animated: true)
                        
                    },
                    completion:
                        
                        {(isCompleted) in
                            print("Left WalkOne Swipe Completion")
                        }
                )
                
            }
            else if sender.direction == .right {
                print("Swipe Right in Call on WalkOneViewController")
            }
        }
        
        if let vc = self as? WalkTwoViewController {
            
            if sender.direction == .left {
                
                UIView.animate(
                    withDuration: 2.0,
                    delay: 0.5,
                    options: .curveEaseIn,
                    animations: {
                        let controller = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "WalkThreeViewController") as! WalkThreeViewController
                        self.navigationController?.pushViewController(controller, animated: true)
                    },
                    completion:
                        
                        {(isCompleted) in
                            print("Left WalkTwo Swipe Completion on WalkTwoViewController")
                        }
                )
                
            }
            else if sender.direction == .right {
                
                UIView.animate(
                    withDuration: 2.0,
                    delay: 0.5,
                    options: .curveEaseOut,
                    animations: {
                        self.navigationController?.popViewController(animated: true)
                        
                    }, completion:
                        
                        {(ifCompleted) in
                            print("Right WalkOne Swipe Completion on WalkTwoViewController")
                        }
                )
            }
            
        }
        
        if let vc = self as? WalkThreeViewController {
            if sender.direction == .left {
                print("Swipe Left in Call on WalkThreeViewController")
            }
            else if sender.direction == .right {
                
                UIView.animate(
                    withDuration: 2.0,
                    delay: 0.5,
                    options: .curveEaseOut,
                    animations: {
                        self.navigationController?.popViewController(animated: true)
                        
                    }, completion:
                        
                        {(ifCompleted) in
                            print("Right WalkTwo Completion")
                        }
                )
            }
        }
        
    }
    
    
    func showFromTop(){
        let transition      = CATransition()
        transition.duration = 0.3
        transition.type     = CATransitionType.push
        transition.subtype  = CATransitionSubtype.fromTop
        view.window!.layer.add(transition, forKey: kCATransition)
    }
    
    func showfrombottom(){
        let transition      = CATransition()
        transition.duration = 0.3
        transition.type     = CATransitionType.push
        transition.subtype  = CATransitionSubtype.fromBottom
        view.window!.layer.add(transition, forKey: kCATransition)
    }
    
}

