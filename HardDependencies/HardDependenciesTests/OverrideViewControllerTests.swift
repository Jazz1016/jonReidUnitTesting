//
//  OverrideViewController.swift
//  HardDependenciesTests
//
//  Created by James Lea on 4/14/22.
//

import XCTest
@testable import HardDependencies

class OverrideViewControllerTests: XCTestCase {
    
    private class TestableOverrideViewController: OverrideViewController {
        override func analytics() -> Analytics { Analytics() }
    }

    func test_zero() {
        
    }
    
    func test_viewDidAppear() {
        let sut = TestableOverrideViewController()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
        
        //Normally, assert something
    }

}
