//
//  TestHelpers.swift
//  AlertTests
//
//  Created by James Lea on 4/27/22.
//

import Foundation
import UIKit

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}
