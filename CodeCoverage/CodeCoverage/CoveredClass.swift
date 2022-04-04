//
//  CoveredClass.swift
//  CodeCoverage
//
//  Created by James Lea on 4/4/22.
//

import UIKit

class CoveredClass {
    
    static func max(_ x: Int,_ y: Int) -> Int {
        if x < y {
            return y
        } else {
            return x
        }
    }
}
