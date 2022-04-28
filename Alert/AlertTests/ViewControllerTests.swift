//
//  ViewControlllerTests.swift
//  AlertTests
//
//  Created by James Lea on 4/17/22.
//

import XCTest
import ViewControllerPresentationSpy
@testable import Alert

class ViewControllerTests: XCTestCase {
    
    private var alertVerifier: AlertVerifier!
    
    override func setUp() {
        super.setUp()
        alertVerifier = AlertVerifier()
    }
    
    override func tearDown() {
        alertVerifier = nil
    }
    
    func test_tappingButton_shouldShowAlert() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        tap(sut.button)
        alertVerifier.verify(title: "Do the Thing?", message: "Let us know if you want to do the thing", animated: true, actions: [.cancel("Cancel"), .default("Ok")], presentingViewController: sut)
    }
    
}
