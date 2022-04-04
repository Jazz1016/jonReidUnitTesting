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
