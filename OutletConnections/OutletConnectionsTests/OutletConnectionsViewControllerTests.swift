//
//  OutletConnectionsViewControllerTests.swift
//  OutletConnectionsTests
//
//  Created by James Lea on 4/16/22.
//

import XCTest
@testable import OutletConnections

class OutletConnectionsViewControllerTests: XCTestCase {
    
    func test_outlets_shouldBeConnected() {
        let sut = OutletConnectionsViewController()
        
        sut.loadViewIfNeeded()
        XCTAssertNotNil(sut.label, "label")
        XCTAssertNotNil(sut.button, "button")
    }

}
