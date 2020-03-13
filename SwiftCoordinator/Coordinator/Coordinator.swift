//
//  Coordinator.swift
//  SwiftCoordinator
//
//  Created by Endtry on 13/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator : class {
    var childCoordinators : [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
