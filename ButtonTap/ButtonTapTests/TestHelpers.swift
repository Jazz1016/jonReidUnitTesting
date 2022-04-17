//
//  TestHelpers.swift
//  ButtonTapTests
//
//  Created by James Lea on 4/16/22.
//

import UIKit

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}

func tap(_ button: UIBarButtonItem) {
    _ = button.target?.perform(button.action, with: nil)
}
