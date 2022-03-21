//
//  AppDelegate.swift
//  SwapifyApp
//
//  Created by Bilal on 11/4/21.
//

import UIKit
import IQKeyboardManagerSwift
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        IQKeyboardManager.shared.enable = true
       // MainScreen()
        return true
    }
    private func MainScreen(){
        
        let walkVC = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "WalkOneViewController") as! WalkOneViewController
        let NavigationStart = UINavigationController(rootViewController: walkVC)
        self.window?.makeKeyAndVisible()
        APPDELEGATE.window?.rootViewController = NavigationStart
        
    }

    


}

