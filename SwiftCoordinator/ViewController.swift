//
//  ViewController.swift
//  SwiftCoordinator
//
//  Created by Endtry on 13/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    var appCoordinator: AppCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buyTapped(_ sender: Any) {
        print("Buy: \(appCoordinator)")
        appCoordinator?.buySubscription()
    }
    
    @IBAction func createTapped(_ sender: Any) {
        print("Create")
        appCoordinator?.createSubscription()
    }
}

