//
//  ViewController.swift
//  ButtonTap
//
//  Created by James Lea on 4/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func buttonTap(_ sender: Any) {
        print(">> Button was tapped")
    }
    

}

