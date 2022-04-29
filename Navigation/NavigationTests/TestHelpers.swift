//
//  TestHelpers.swift
//  NavigationTests
//
//  Created by James Lea on 4/22/22.
//

import UIKit

func tap(_ button: UIButton) {
    guard let title = button.titleLabel?.text else { return }
    print(">> \(title) button was tapped")
    button.sendActions(for: .touchUpInside)
}

func tap(_ button: UIBarButtonItem) {
    print(">> A bar button was tapped")
    button.target?.perform(button.action, with: nil)
}

func executeRunLoop() {
    RunLoop.current.run(until: Date())
}

func putInWindow(_ vc: UIViewController) {
    let window = UIWindow()
    window.rootViewController = vc
    window.isHidden = false
}
