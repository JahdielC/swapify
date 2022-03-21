//
//  Constants.swift
//  SwapifyApp
//
//  Created by Bilal on 11/4/21.
//

import Foundation
import UIKit

class Constants {
    
    /* MARK:- Singleton struct initilization */
    static var sharedInstance : Constants = Constants()

    var fcmToken : String {
        get {
            return DEFAULTS.string(forKey: Constants.userDefaults.FCM_TOKEN) ?? ""
        }
    }
    
    var userId : String {
        get {
            return DEFAULTS.string(forKey: Constants.userDefaults.USER_ID) ?? ""
        }
    }
    
    var userFullName : String {
        get {
            return DEFAULTS.string(forKey: Constants.userDefaults.USER_FULLNAME) ?? ""
        }
    }
    var userImage : String {
        get {
            return DEFAULTS.string(forKey: Constants.userDefaults.USER_IMAGE) ?? ""
        }
    }
    var userEmail : String {
        get {
            return DEFAULTS.string(forKey: Constants.userDefaults.USER_IMAGE) ?? ""
        }
    }
    
//    var httpHeaders : HTTPHeaders {
//        get {
//            return [
//                "Authorization" : UserDefaults.standard.string(forKey: Constants.userDefaults.HTTP_HEADERS) ?? ""
//            ]
//        }
//    }
    
    /* MARK:- Static Child Structs */
    struct userDefaults {
        static let FCM_TOKEN     = "fcmToken"
        static let HTTP_HEADERS  = "httpHeaders"
        static let USER_ID       = "userId"
        static let USER_FULLNAME = "userFullName"
        static let USER_IMAGE    = "userImage"
        static let USER_EMAIL    = "userEmail"
    }
    
    
    
}
