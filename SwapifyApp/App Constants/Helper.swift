//
//  Helper.swift
//  SwapifyApp
//
//  Created by Bilal on 11/4/21.
//

import Foundation
import UIKit
class Helper {
    
    static func debugLogs(any data: Any, and title: String = "Log") {
        print("============= DEBUG LOGS START =================")
        print("\(title): \(data)")
        print("=============  DEBUG LOGS END  =================")
        print("\n \n")
    }
    
    
    static func getProportionalSize(with width: CGFloat, and height: CGFloat) -> CGSize {
        var rightDDWidth : CGFloat = 0.0
        var rightDDHeight: CGFloat = 0.0
        
        let heightMultiplier = height / 896
        let widthMultiplier  = width / 414
        
        rightDDHeight    = SCREEN_HEIGHT * CGFloat(heightMultiplier)
        rightDDWidth     = SCREEN_WIDTH  * CGFloat(widthMultiplier)
        
        return CGSize(width: rightDDWidth, height: rightDDHeight)
    }
    
    static func sToHMS(seconds : Int) -> (H: Int, M: Int, S: Int) {
        return (seconds / 3600, (seconds % 3600) / 60, (seconds % 3600) % 60)
    }
    
    static func setShadow(view: UIView,shadowRadius: CGFloat,shadowOpacity: Float, shadowColor: CGColor, shadowOffset: CGSize) {
        view.layer.shadowColor    = shadowColor
        view.layer.shadowRadius   = shadowRadius
        view.layer.shadowOpacity  = shadowOpacity
        view.layer.shadowOffset   = shadowOffset
    }
    
    static func setImageShadow(view: UIImageView,shadowRadius: CGFloat,shadowOpacity: Float, shadowColor: CGColor, shadowOffset: CGSize) {
        view.layer.shadowColor    = shadowColor
        view.layer.shadowRadius   = shadowRadius
        view.layer.shadowOpacity  = shadowOpacity
        view.layer.shadowOffset   = shadowOffset
    }
    
    static func getImagefromURL(
        imageURL  : URL,
        completion: @escaping (_ image: UIImage)->()
    ) {
        do {
            let data  = try Data(contentsOf: imageURL)
            if let image = UIImage(data: data) {
                completion(image)
            }
            completion(UIImage())
        } catch {
            print(error.localizedDescription)
            completion(UIImage())
        }
    }
    
    static func getImagefromURL(
        imageURL  : URL
    ) -> UIImage {
        do {
            let data  = try Data(contentsOf: imageURL)
            if let image = UIImage(data: data) {
                return image
            }
            return UIImage()
        } catch {
            print(error.localizedDescription)
            return UIImage()
        }
    }
}
