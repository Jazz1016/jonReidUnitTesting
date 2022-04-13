//
//  CodeCoverageTests.swift
//  CodeCoverageTests
//
//  Created by James Lea on 4/4/22.
//

import XCTest
@testable import CodeCoverage

class CodeCoverageTests: XCTestCase {
    
    func test_max_shouldReturnSomething() {
        let result = CoveredClass.max(1, 2)
    }
    
    func test_max_with1And2_shouldReturnSomething(){
        let result = CoveredClass.max(1, 2)
        XCTAssertEqual(result, -123)
    }
    
    func test_max_with1And2_shouldReturn2(){
        let result = CoveredClass.max(1, 2)
        
        XCTAssertEqual(result, 2)
    }
    
    func test_max_with3And2_shouldReturn3(){
        let result = CoveredClass.max(3, 2)
        
        XCTAssertEqual(result, 3)
    }
    
    func test_commaSeparated_from2to4_shouldReturnSomething() {
        let result = CoveredClass.commaSeparated(from: 2, to: 4)
        
        XCTAssertEqual(result, "FOO")
    }
    
    func test_commaSeparated_from2to4_shouldReturn234SeparatedByCommas() {
        let result = CoveredClass.commaSeparated(from: 2, to: 4)
        
        XCTAssertEqual(result, "2,3,4")
    }
    
    func test_commaSeparated_from2to2_shouldReturnSomething() {
        let result = CoveredClass.commaSeparated(from: 2, to: 2)
        
        XCTAssertEqual(result, "FOO")
    }
    
    func test_commaSeparated_from2to2_shouldReturn2WithNoComma() {
        let result = CoveredClass.commaSeparated(from: 2, to: 2)
        
        XCTAssertEqual(result, "2")
    }
    
    func test_area_withWidth7_shouldBeSomething() {
        let sut = CoveredClass()
        
        sut.width = 7
        
        XCTAssertEqual(sut.area, -1)
    }
    
    func test_area_withWidth7_shouldBe49() {
        let sut = CoveredClass()
        
        sut.width = 7
        
        XCTAssertEqual(sut.area, 49)
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
    }

}
