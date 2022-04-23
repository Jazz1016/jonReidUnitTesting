//
//  ViewControllerTests.swift
//  NavigationTests
//
//  Created by James Lea on 4/22/22.
//

import XCTest
@testable import Navigation

class ViewControllerTests: XCTestCase {
    
    func test_tappingButtons() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        tap(sut.codePushButton)
        tap(sut.codeModalButton)
        tap(sut.seguePushButton)
        tap(sut.segueModalButton)
        
        // Assert something
    }
    
    func test_codeTappingPushButton_shouldPushCodeNextViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        let navigation = UINavigationController(rootViewController: sut)
        tap(sut.codePushButton)
        
        XCTAssertNotNil(sut.navigationController)
        XCTAssertEqual(navigation.viewControllers.count, 2, "navigation stack")
    }

}
