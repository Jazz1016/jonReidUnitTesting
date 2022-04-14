//
//  MySingletonViewController.swift
//  HardDependencies
//
//  Created by James Lea on 4/14/22.
//

import UIKit

class MySingletonViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Analytics.shared.track(event: "viewDidAppear - \(type(of: self))")
    }
    
}
