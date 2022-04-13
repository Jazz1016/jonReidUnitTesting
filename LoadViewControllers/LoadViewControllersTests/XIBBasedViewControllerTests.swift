//
//  XIBBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by James Lea on 4/13/22.
//

import XCTest
@testable import LoadViewControllers

class XIBBasedViewControllerTests: XCTestCase {
    
    func test_zero(){
        
    }
    
    func test_loading(){
        let sut = XIBBasedViewController()
        sut.loadViewIfNeeded()
        XCTAssertNotNil(sut.label)
    }
    
    

}
