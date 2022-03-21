//
//  Global.swift
//  SwapifyApp
//
//  Created by Bilal on 11/4/21.
//

import Foundation
import UIKit

/* MARK:- Constants */
var SPINNER           : UIView?
var POP_TO_VC         : UIViewController?
let APP_NAME          = "Swapify"
let DEFAULTS          = UserDefaults.standard
let APPDELEGATE       = UIApplication.shared.delegate as! AppDelegate
let SCREEN_WIDTH      = UIScreen.main.bounds.width
let SCREEN_HEIGHT     = UIScreen.main.bounds.height
let PLACEHOLDER_IMAGE = UIImage(named: "placeholder")!


/* MARK:- Storyboards */
let MAIN_STORYBOARD : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

