//
//  ViewControllerTests.swift
//  NavigationTests
//
//  Created by James Lea on 4/22/22.
//

import XCTest
@testable import Navigation

class ViewControllerTests: XCTestCase {
    
    private class TestableViewController: ViewController {
        var presentCallCount = 0
        var presentArgsViewController: [UIViewController] = []
        var presentArgsAnimated: [Bool] = []
        var presentArgsClosure: [(() -> Void)?] = []
        
        override func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
            presentCallCount += 1
            presentArgsViewController.append(viewControllerToPresent)
            presentArgsAnimated.append(flag)
            presentArgsClosure.append(completion)
        }
    }
    
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
        executeRunLoop()
        XCTAssertNotNil(sut.navigationController)
        XCTAssertEqual(navigation.viewControllers.count, 2, "navigation stack")
        
        let pushedVC = navigation.viewControllers.last
        guard let codeNextVC = pushedVC as? CodeNextViewController else {
            XCTFail("Expected CodeNextViewController, " + "but was \(String(describing: pushedVC))")
            return
        }
        XCTAssertEqual(codeNextVC.label.text, "Pushed from code")
    }
    
    func test_INCORRECT_tappingCodeModalButton_shouldPresentCodeNextViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        UIApplication.shared.windows.first?.rootViewController = sut
        
        tap(sut.codeModalButton)
        
        let presentedVC = sut.presentedViewController
        guard let codeNextVC = presentedVC as? CodeNextViewController else {
            XCTFail("Expected CodeNextViewController, " + "but was \(String(describing: presentedVC))")
            return
        }
        XCTAssertEqual(codeNextVC.label.text, "Modal from code")
    }

}
