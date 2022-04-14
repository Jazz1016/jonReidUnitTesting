//
//  ClosurePropertyViewController.swift
//  HardDependencies
//
//  Created by James Lea on 4/14/22.
//

import UIKit

class ClosurePropertyViewController: UIViewController {
    
    var makeAnalytics: () -> Analytics = { Analytics.shared }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        makeAnalytics().track(event: "viewDidAppear - \(self)")
    }
    
}
