//
//  MyClassTests.swift
//  LifeCycleTests
//
//  Created by James Lea on 4/1/22.
//

import XCTest
@testable import LifeCycle

class MyClassTests: XCTestCase {
    
    func test_zero(){
        XCTFail("Tests not yet implemented in MyClassTests")
    }

    func test_methodOne() {
        let sut = MyClass()
        
        sut.methodOne()
        XCTFail("Failed, yo")
    }
    
    func test_methodTwo(){
        let sut = MyClass()
        
        sut.methodTwo()
    }
    
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
    }

}
