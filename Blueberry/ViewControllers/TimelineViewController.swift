//
//  TimelineViewController.swift
//  Blueberry
//
//  Created by Michelle Ho on 7/1/16.
//  Copyright © 2016 Michelle Ho. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set this controller as the delegate of tabBarController
        self.tabBarController?.delegate = self
    }
}

// MARK: Tab Bar Delegate


// Implementation of relevant protocol method
extension TimelineViewController: UITabBarControllerDelegate {
    
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        if (viewController is PhotoViewController) {
            print("Take Photo")
            return false
        } else {
            return true
        }
    }
}

