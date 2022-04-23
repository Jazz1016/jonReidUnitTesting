//
//  SegueNextViewController.swift
//  Navigation
//
//  Created by James Lea on 4/22/22.
//

import UIKit

class SegueNextViewController: UIViewController {
    var labelText: String?
    
    @IBOutlet private(set) var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        label.text = labelText
        label.backgroundColor = .blue
    }
    
}
