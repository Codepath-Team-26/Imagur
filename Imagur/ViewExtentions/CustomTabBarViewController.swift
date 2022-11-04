//
//  CustomTabBarViewController.swift
//  UIKit for iOS 15
//
//  Created by Sai Kambampati on 11/4/21.
//

import UIKit

class CustomTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.selectionIndicatorImage = UIImage(named: "Selected")
        self.tabBar.layer.masksToBounds = true
        self.tabBar.layer.cornerRadius = 30
        self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        self.additionalSafeAreaInsets.bottom = 20
        self.tabBar.tintColor = UIColor(named: "ButtonTint")
        
    }
}
