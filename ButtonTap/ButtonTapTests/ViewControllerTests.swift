//
//  ViewControllerTests.swift
//  ButtonTapTests
//
//  Created by James Lea on 4/16/22.
//

import XCTest
@testable import ButtonTap

class ViewControllerTests: XCTestCase {

    func test_tappingButton() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
//        sut.button.sendActions(for: .touchUpInside)
        tap(sut.button)
    }

}
