//
//  TabBarController.swift
//  SwapifyApp
//
//  Created by Bilal on 11/9/21.
//

import UIKit


class TabBarController: UITabBarController {
    
    let tabBarOne   = SearchTabViewController()
    let tabBarTwo   = HomeTabViewController()
    let tabBarThree = OrderTabViewController()
    let tabBarFour  = ProfileTabViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //        view.backgroundColor = .white
        self.tabBar.barTintColor = .white
        //        //selected items should have black tint color
        UITabBar.appearance().tintColor = UIColor(red: 231/255.0, green: 76/255.0, blue: 60/255.0, alpha: 1)
        
        //        self.viewControllers = [tabBarOne, tabBarTwo, tabBarThree, tabBarFour]
        //        //always begin in the middle with Home VC
        self.selectedIndex = 0
        //
        guard tabBar.items != nil else {
            return
        }
        
    }
    
}

extension TabBarController: UITabBarControllerDelegate  {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        guard let fromView = selectedViewController?.view, let toView = viewController.view else {
            return false // Make sure you want this as false
        }
        
        if fromView != toView {
            UIView.transition(from: fromView, to: toView, duration: 0.75, options: [.transitionCrossDissolve], completion: nil)
        }
        return true
    }
}
