//
//  ClosurePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by James Lea on 4/14/22.
//

import XCTest
@testable import HardDependencies

class ClosurePropertyViewControllerTests: XCTestCase {

    func test_zero() {
        
    }
    
    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ClosurePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: ClosurePropertyViewController.self))
        sut.loadViewIfNeeded()
        
        sut.makeAnalytics = { Analytics() }
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
        
        //Normally, Assert Something
    }

}
