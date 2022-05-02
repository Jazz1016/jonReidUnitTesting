//
//  ViewController.swift
//  Userdefaults
//
//  Created by James Lea on 5/1/22.
//

import UIKit

protocol UserDefaultsProtocol {
    func set(_ value: Int, forKey defaultName: String)
    func integer(forKey defaultName: String) -> Int
}

extension UserDefaults: UserDefaultsProtocol {}

class ViewController: UIViewController {
    
    @IBOutlet private(set) var counterLabel: UILabel!
    @IBOutlet private(set) var incrementButton: UIButton!
    var userDefaults: UserDefaultsProtocol = UserDefaults.standard
    
//    init(){
//        super.init()
//        ViewController.allInstances += 1
//        instance = ViewController.allInstances
//        print(">> MyClass.init() #\(instance)")
//    }
    
    private var count = 0 {
            didSet {
                counterLabel.text = "\(count)"
                userDefaults.set(count, forKey: "count")
            }
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        count = userDefaults.integer(forKey: "count")
    }
    
    @IBAction private func incrementButtonTapped() {
        count += 1
    }

}


