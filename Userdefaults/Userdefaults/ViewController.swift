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

class ViewController: UIViewController {
    
    @IBOutlet private(set) var counterLabel: UILabel!
    @IBOutlet private(set) var incrementButton: UIButton!
    var userDefaults: UserDefaultsProtocol = UserDefaults.standard
    private static var allInstances = 0
    private let instance: Int
    
//    init(){
//        super.init()
//        ViewController.allInstances += 1
//        instance = ViewController.allInstances
//        print(">> MyClass.init() #\(instance)")
//    }
    
    deinit {
        print(">> MyClass.deinit #\(instance)")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var count = 0 {
        didSet {
            counterLabel.text = "\(count)"
            userDefaults.set(count, forKey: "count")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        ViewController.allInstances += 1
        instance = ViewController.allInstances
        print(">> MyClass.init() #\(instance)")
        count = userDefaults.integer(forKey: "count")
    }
    
    @IBAction private func incrementButtonTapped() {
        count += 1
    }

}

extension UserDefaults: UserDefaultsProtocol {}
