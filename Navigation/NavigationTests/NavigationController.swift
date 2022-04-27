//
//  NavigationController.swift
//  NavigationTests
//
//  Created by James Lea on 4/26/22.
//

import Foundation
import UIKit

class SpyNavigationController: UINavigationController {
    private(set) var pushViewControllerArgsAnimated: [Bool] = []
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        pushViewControllerArgsAnimated.append(animated)
    }
}
