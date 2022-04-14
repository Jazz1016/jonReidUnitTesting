//
//  MySingletonViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by James Lea on 4/14/22.
//

@testable import HardDependencies
import XCTest

class MySingletonViewControllerTests: XCTestCase {

    func test_zero() {
        
    }
    
    override func setUp() {
        super.setUp()
        MysingletonAnalytics.stubbedInstance = MysingletonAnalytics()
    }
    
    override class func tearDown() {
        MysingletonAnalytics.stubbedInstance = nil
    }
    
    func test_viewDidAppear() {
        let sut = MySingletonViewController()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
        
        //Normally, assert something
    }

}
