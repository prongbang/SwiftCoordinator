//
//  AppCoordinator.swift
//  SwiftCoordinator
//
//  Created by Endtry on 13/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
// 
//  @reference https://www.youtube.com/watch?v=7HgbcTqxoN4

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = ViewController.instantiate()
        print("viewController: \(viewController)")
        viewController.appCoordinator = self
        navigationController.pushViewController(viewController, animated: false)
    }
    
    func buySubscription() {
        let viewController = BuyViewController.instantiate()
        viewController.appCoordinator = self
        navigationController.pushViewController(viewController, animated: false)
    }
    
    func createSubscription() {
        let viewController = CreateViewController.instantiate()
        viewController.appCoordinator = self
        navigationController.pushViewController(viewController, animated: false)
    }
 
}

