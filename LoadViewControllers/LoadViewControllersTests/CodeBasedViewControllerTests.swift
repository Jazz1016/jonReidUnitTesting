//
//  CodeBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by James Lea on 4/13/22.
//

import XCTest
@testable import LoadViewControllers

class CodeBasedViewControllerTests: XCTestCase {
    
    func test_zero(){
        
    }
    
    func test_loading(){
        let sut = CodeBasedViewController(data: "DUMMY")
        sut.loadViewIfNeeded()
        //Normally assert something
    }

}
