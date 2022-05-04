//
//  ViewControllerTests.swift
//  NetworkRequestTests
//
//  Created by James Lea on 5/2/22.
//

import XCTest
@testable import NetworkRequest

class ViewControllerTests: XCTestCase {
//    var sut: ViewController!
//    var mockSession: MockURLSession!
    
//    override func setUp() {
//        super.setUp()
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        sut = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
//        sut.loadViewIfNeeded()
//        mockSession = MockURLSession()
//        sut.session = mockSession
//    }
//
//    override func tearDown() {
//        sut = nil
//        mockSession = nil
//        super.tearDown()
//    }
//
//    func test_tappingButton_shouldMakeDataTaskToSearchForEBookOutFromBoneville() {
//        tap(sut.button)
////        XCTAssertEqual(MockURLSession.dataTaskCallCount, 1, "call count")
//    }
    func test_tappingButton_shouldMakeDataTaskToSearchForEBookOutFromBoneville() {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
            let mockURLSession = MockURLSession()
            sut.session = mockURLSession
            sut.loadViewIfNeeded()

            tap(sut.button)
    }
    
}
