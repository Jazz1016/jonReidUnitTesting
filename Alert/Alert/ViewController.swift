//
//  ViewController.swift
//  Alert
//
//  Created by James Lea on 4/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private(set) weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func buttonTap(_ sender: Any) {
        let alert = UIAlertController(
            title: "Do the Thing?",
            message: "Let us know wif you want to do the thing",
            preferredStyle: .alert)
        let cancelAction = UIAlertAction(
            title: "Cancel",
            style: .default) { _ in
                print("cancel")
            }
        let okAction = UIAlertAction(
            title: "Ok",
            style: .default) { _ in
            print(">> Ok")
        }
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        alert.preferredAction = okAction
        present(alert, animated: true)
    }
    
    

}

