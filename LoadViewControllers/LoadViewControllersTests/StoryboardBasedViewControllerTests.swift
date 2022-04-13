//
//  StoryboardBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by James Lea on 4/13/22.
//

import XCTest
@testable import LoadViewControllers

class StoryboardBasedViewControllerTests: XCTestCase {
    
    func test_zero(){
        
    }
    
    func test_loading(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut: StoryboardBasedViewController = sb.instantiateViewController(identifier: String(describing: StoryboardBasedViewController.self))
        sut.loadViewIfNeeded()
        XCTAssertNotNil(sut.label)
    }

}
