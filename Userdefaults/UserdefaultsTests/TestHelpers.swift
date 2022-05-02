//
//  TestHelpers.swift
//  UserdefaultsTests
//
//  Created by James Lea on 5/2/22.
//

import Foundation
import UIKit

func tap (_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}

func tap (_ button: UIBarButtonItem) {
    _ = button.target?.perform(button.action, with: nil)
}
