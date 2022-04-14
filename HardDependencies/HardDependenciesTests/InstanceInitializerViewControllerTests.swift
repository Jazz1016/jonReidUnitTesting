//
//  InstanceInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by James Lea on 4/14/22.
//

import XCTest
@testable import HardDependencies

class InstanceInitializerViewControllerTests: XCTestCase {
    
    func test_zero() {
        
    }
    
    func test_viewDidAppear() {
        let sut = InstanceInitializerViewController(analytics: Analytics())
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }

}
