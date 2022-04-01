//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by James Lea on 3/31/22.
//

import XCTest
@testable import AssertYourself

class AssertYourselfTests: XCTestCase {
    
    func test_fail(){
        XCTFail("We have a problem")
    }
    
    func test_fail_withInterpolatedMessage(){
        let theAnswer = 42
        XCTFail("The answer to the Great Question is \(theAnswer)")
    }
        
    func test_avoidConditionalCode(){
        let success = false
        if !success {
            XCTFail()
        }
    }
    
    func test_assertTrue(){
        let success = false
        XCTAssertTrue(success)
    }
    
    func test_assertNil(){
        let optionalValue: Int? = 123
        XCTAssertNil(optionalValue)
    }
    
    struct SimpleStruct {
        let x: Int
        let y: Int
    }
    
    func test_assertNil_withSimpleStruct() {
        let optionalValue: SimpleStruct? = SimpleStruct(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    struct StructWithDescription: CustomStringConvertible {
        let x: Int
        let y: Int
        
        var description: String {
            "\(x), \(y)"
        }
    }
    
    func test_assertNil_withSelfDescribingType(){
        let optionalValue: StructWithDescription? = StructWithDescription(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    func test_assertEqual(){
        let actual = "actual"
        XCTAssertEqual("expected", actual)
    }
    
    func test_assertEqual_withOptional(){
        let result: String? = "foo"
        XCTAssertEqual(result, "bar")
    }
    
    func test_floatingPointDanger() {
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3)
    }
    
    func test_floatingPointFixed(){
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3, accuracy: 0.0001)
    }
    
    func test_messageOverkill(){
        let actual = "actual"
        XCTAssertEqual(actual, "expected", "Expected \"expected\" but got \"\(actual)\"")
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
