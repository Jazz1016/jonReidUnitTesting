//
//  FakeUserDefaults.swift
//  UserdefaultsTests
//
//  Created by James Lea on 5/1/22.
//

@testable import Userdefaults

class FakeUserDefaults: UserDefaultsProtocol {
    var integers: [String: Int] = [:]
    
    func set(_ value: Int, forKey defaultName: String) {
        integers[defaultName] = value
    }
    
    func integer(forKey defaultName: String) -> Int {
        integers[defaultName] ?? 0
    }
    
    
}
